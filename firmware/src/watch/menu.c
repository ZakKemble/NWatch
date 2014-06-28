/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "common.h"
#include "menu.h"
#include "menus/functions.h"
#include "devices/buttons.h"
#include "devices/oled.h"
#include "watchface.h"
#include "display.h"
#include "animation.h"
#include "draw.h"
#include "resources.h"
#include "watchconfig.h"
#include "menus/main.h"
#include "millis/millis.h"

#define min(a,b) \
({ __typeof__ (a) _a = (a); \
__typeof__ (b) _b = (b); \
	_a < _b ? _a : _b; })

const char menuBack[] PROGMEM = "Back";
s_menu menuData;

static void menu_drawStr(void);
static display_t menu_drawIcon(void);
static void checkScroll(void);
static void clear(void);

bool menu_select()
{
	if(!animation_active() || animation_movingOn())
	{
		if(!menuData.isOpen)
		{
			menuData.isOpen = true;
			mMainOpen();
		}
		else if(menuData.selectFunc != NULL)
			menuData.selectFunc();
	}
	return true;
}

bool menu_down()
{
	if(menuData.isOpen && (!animation_active() || animation_movingOn()) && menuData.downFunc != NULL)
		menuData.downFunc();
	return true;
}

bool menu_up()
{
	if(menuData.isOpen && (!animation_active() || animation_movingOn()) && menuData.upFunc != NULL)
		menuData.upFunc();
	return true;
}

display_t menu_draw()
{
	display_t busy = DISPLAY_DONE;
	if(menuData.menuType == MENU_TYPE_STR)
		menu_drawStr();
	else
		busy = menu_drawIcon();

	if(menuData.drawFunc != NULL)
		busy = busy || menuData.drawFunc();

	return busy;
}

static void menu_drawStr()
{
//	static byte x = 0;
//	x+=2;
	draw_string(menuData.title, false, 0, 0);

	byte count = min(MAX_MENU_ITEMS, menuData.optionCount);
	for(byte pos=0, i=menuData.scroll;i<menuData.scroll + count;pos++, i++)
	{
		if(i == menuData.selected)
			draw_string(">", false, 0, 8 + (8 * pos));
		draw_string(menuData.options[i].name, false, 6, 8 + (8 * pos));
	}
/*
	float a = (float)menuData.selected / (menuData.optionCount - 1);
	byte b = (FRAME_HEIGHT - 8 - 8) * a;
	draw_bitmap(FRAME_WIDTH - 7, b + 8, scrollBarIcon, 5, 8, WHITE, false, 0);
*/
/*
	byte count = min(MAX_MENU_ITEMS, menuData.optionCount);
	for(byte pos=0, i=menuData.scroll;i<menuData.scroll + count;pos++, i++)
	{
		byte a = 32 + ((pos * 8) - (menuData.selected * 8));
		if(a > 7 && a < 119)
			draw_string(menuData.options[i].name, false, 6, a);
	}
	draw_string(">", false, 0, 32);
*/
}

static display_t menu_drawIcon()
{
	static int animX = 64;

	int x = 64;
	x -= 48 * menuData.selected;
	
	display_t busy = DISPLAY_DONE;

	if(watchConfig.animations)
	{
		byte speed;
		if(x > animX)
		{
			speed = ((x - animX) / 4) + 1;
			if(speed > 16)
				speed = 16;
			animX += speed;
			if(x <= animX)
				animX = x;
			else
				busy = DISPLAY_BUSY;
		}
		else if(x < animX)
		{
			speed = ((animX - x) / 4) + 1;
			if(speed > 16)
				speed = 16;
			animX -= speed;
			if(x >= animX)
				animX = x;
			else
				busy = DISPLAY_BUSY;
		}
	}
	else
		animX = x;	

	x = animX - 16;
	
	draw_string(menuData.title, false, 0, 0);

	// Create image struct
	// FIX: struct uses heap, should use stack
	byte fix = 36;
	s_image img = newImage(46, 14, selectbar_top, fix, 8, WHITE, NOINVERT, 0);

	// Draw ...
	draw_bitmap_s2(&img);

	// Draw ...
	img.y = 42;
	img.bitmap = selectbar_bottom;
	draw_bitmap_s2(&img);

	img.y = 16;
	img.width = 32;
	img.height = 32;

	for(byte i=0;i<menuData.optionCount;i++)
	{
		if(x < FRAME_WIDTH && x > -32)
		{
			img.x = x;
			img.bitmap = menuData.options[i].icon != NULL ? menuData.options[i].icon : menu_default;
			draw_bitmap_s2(&img);
		}
		x += 48;
	}

	draw_string(menuData.options[menuData.selected].name, false, 0, FRAME_HEIGHT - 8);
	
	return busy;
}

bool menu_isOpen()
{
	return menuData.isOpen;
}

void menu_close()
{
	clear();
	menuData.isOpen = false;
	menuData.prevMenu = NULL;
	watchface_loadFace(); // Move somewhere else, sometimes we don't want to load the watch face when closing the menu
}

void setPrevMenuOpen(s_prev_menu* prevMenu, menu_f newPrevMenu)
{
	if(menuData.prevMenu != newPrevMenu) // Make sure new and old menu funcs are not the same, otherwise we get stuck in a menu loop
		prevMenu->last = menuData.prevMenu; // Save previous menu open func
	menuData.selected = prevMenu->lastSelected; // 
	menuData.prevMenu = newPrevMenu; // Set new menu open func
}

void setPrevMenuExit(s_prev_menu* prevMenu, byte exitIdx)
{
	if(menuData.selected != exitIdx) // Opened new menu, save selected item
		prevMenu->lastSelected = menuData.selected;
	else
	{
		prevMenu->lastSelected = 0; // Reset selected item
		menuData.prevMenu = prevMenu->last; // 
	}
}

void clear()
{
	menuData.selectFunc = NULL;
	menuData.downFunc = NULL;
	menuData.upFunc = NULL;
	menuData.drawFunc = NULL;
	if(menuData.options != NULL)
		free(menuData.options);
	menuData.options = NULL;
}

void back()
{
	menuData.prevMenu != NULL ? menuData.prevMenu() : mMainOpen();
//	mMainOpen();
}

inline void beginAnimation(menu_f onComplete)
{
	animation_start(onComplete, ANIM_MOVE_OFF);
}

inline void beginAnimation2(menu_f onComplete)
{
	animation_start(onComplete, ANIM_MOVE_ON);
}

void setMenuInfo(byte optionCount, const char* title, byte menuType, menu_f selectFunc, menu_f downFunc, menu_f upFunc)
{
	clear();

	menuData.scroll = 0;
	menuData.selected = 0;
	menuData.optionCount = optionCount;
	menuData.menuType = menuType;
	menuData.selectFunc = selectFunc;
	menuData.downFunc = downFunc;
	menuData.upFunc = upFunc;
	strcpy_P(menuData.title, title);

	menuData.options = (s_menuOption*)calloc(optionCount, sizeof(s_menuOption));
}

void setMenuOption_P(byte num, const char* name, const byte* icon, menu_f actionFunc)
{
	strcpy_P(menuData.options[num].name, name);
	menuData.options[num].icon = icon;
	menuData.options[num].actionFunc = actionFunc;
}

void setMenuOption(byte num, const char* name, const byte* icon, menu_f actionFunc)
{
	strcpy(menuData.options[num].name, name);
	menuData.options[num].icon = icon;
	menuData.options[num].actionFunc = actionFunc;
}

void downOption()
{
	menuData.selected++;
	if(menuData.selected >= menuData.optionCount)
		menuData.selected = 0;

	checkScroll();
}

void upOption()
{
	menuData.selected--;
	if(menuData.selected >= menuData.optionCount)
		menuData.selected = menuData.optionCount - 1;

	checkScroll();
}

void doAction(bool anim)
{
	menu_f actionFunc = menuData.options[menuData.selected].actionFunc;
	if(actionFunc != NULL)
	{
		if(anim)
			beginAnimation(actionFunc);
		else
			actionFunc();
	}		
}

static void checkScroll()
{
	if(menuData.selected >= menuData.scroll + MAX_MENU_ITEMS)
		menuData.scroll = (menuData.selected + 1) - MAX_MENU_ITEMS;
	else if(menuData.selected < menuData.scroll)
		menuData.scroll = menuData.selected;
}