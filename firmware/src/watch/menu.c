/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

typedef enum
{
	OPERATION_DRAWICON,
	OPERATION_DRAWNAME_ICON,
	OPERATION_DRAWNAME_STR,
	OPERATION_ACTION
} operation_t;

typedef struct
{
	byte data;
	operation_t op;
	byte id;
}operation_s;

s_menuNowSetting setting;
menu_s menuData;
static operation_s operation;
const char menuBack[] PROGMEM = STR_BACK;

static void doBtn(menu_f);
static void drawTitle(void);
static void loader(operation_t, byte, byte);
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
		else if(menuData.func.btn2 != NULL)
			menuData.func.btn2();
	}
	return true;
}

bool menu_down()
{
	doBtn(menuData.func.btn3);
	return true;
}

bool menu_up()
{
	doBtn(menuData.func.btn1);
	return true;
}

static void doBtn(menu_f btn)
{
	if(menuData.isOpen && (!animation_active() || animation_movingOn()) && btn != NULL)
		btn();
}

display_t menu_draw()
{
	display_t busy = DISPLAY_DONE;
	if(menuData.menuType == MENU_TYPE_STR)
		menu_drawStr();
	else
		busy = menu_drawIcon();

	if(menuData.func.draw != NULL)
		busy = busy || menuData.func.draw() ? DISPLAY_BUSY : DISPLAY_DONE;

	return busy;
}

static void drawTitle()
{
	char buff[BUFFSIZE_STR_MENU];
	memset(buff, ' ', sizeof(buff));
	strcpy_P(buff + (9 - (strlen_P(menuData.title) / 2)), menuData.title);
	draw_string(buff, false, 0, 0);
}

static void loader(operation_t op, byte num, byte data)
{
	operation.op = op;
	operation.id = num;
	operation.data = data;

	if(menuData.func.loader != NULL)
		menuData.func.loader(num);
}

static void menu_drawStr()
{
	drawTitle();

	byte scroll = menuData.scroll;
	byte count = ((MAX_MENU_ITEMS < menuData.optionCount) ? MAX_MENU_ITEMS : menuData.optionCount) + scroll;
	for(byte i=scroll;i<count;i++)
	{
		byte y = 8 + (8 * (i - scroll));
		if(i == menuData.selected)
			draw_string(">", false, 0, y);
		loader(OPERATION_DRAWNAME_STR, i, y);
	}
}

static display_t menu_drawIcon()
{
	static int animX = 64;

	int x = 64 - (48 * menuData.selected);

	display_t busy = DISPLAY_DONE;

#if COMPILE_ANIMATIONS
	if(appConfig.animations)
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
#endif
		animX = x;	

	x = animX - 16;

	drawTitle();

	draw_bitmap(46, 14, selectbar_top, 36, 8, NOINVERT, 0);
	draw_bitmap(46, 42, selectbar_bottom, 36, 8, NOINVERT, 0);

	LOOP(menuData.optionCount, i)
	{
		if(x < FRAME_WIDTH && x > -32)
			loader(OPERATION_DRAWICON, i, x);
		x += 48;
	}

	loader(OPERATION_DRAWNAME_ICON, menuData.selected, 0);

	return busy;
}

void setMenuOption_P(byte num, const char* name, const byte* icon, menu_f actionFunc)
{
	if(num != operation.id)
		return;

	char buff[BUFFSIZE_STR_MENU];
	strcpy_P(buff, name);
	setMenuOption(num, buff, icon, actionFunc);
}

#include <math.h>
void setMenuOption(byte num, const char* name, const byte* icon, menu_f actionFunc)
{
	if(num != operation.id)
		return;

	switch(operation.op)
	{
		case OPERATION_DRAWICON:
			{
				byte a = operation.data;
				//if(a > FRAME_WIDTH)
				//	a -= (FRAME_WIDTH+32);
				float x = ((a/(float)(FRAME_WIDTH-32)) * (M_PI / 2)) + (M_PI / 4);
				byte y = (sin(x) * 32);
				y = 28; // comment this out for magic

				draw_bitmap(operation.data, y + 4 - 16, icon != NULL ? icon : menu_default, 32, 32, NOINVERT, 0);
			}
			break;
		case OPERATION_DRAWNAME_ICON:
			draw_string((char*)name, false, 0, FRAME_HEIGHT - 8);
			break;
		case OPERATION_DRAWNAME_STR:
			draw_string((char*)name, false, 6, operation.data);	
			break;
		case OPERATION_ACTION:
			if(actionFunc != NULL)
				operation.data ? beginAnimation(actionFunc) : actionFunc();
			break;
		default:
			break;
	}
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
	display_load(); // Move somewhere else, sometimes we don't want to load the watch face when closing the menu
}

void setPrevMenuOpen(prev_menu_s* prevMenu, menu_f newPrevMenu)
{
	if(menuData.prevMenu != newPrevMenu) // Make sure new and old menu funcs are not the same, otherwise we get stuck in a menu loop
		prevMenu->last = menuData.prevMenu; // Save previous menu open func
	menuData.selected = prevMenu->lastSelected; // 
	menuData.prevMenu = newPrevMenu; // Set new menu open func
}

void setPrevMenuExit(prev_menu_s* prevMenu)
{
	if(!exitSelected()) // Opened new menu, save selected item
		prevMenu->lastSelected = menuData.selected;
	else
	{
		prevMenu->lastSelected = 0; // Reset selected item
		menuData.prevMenu = prevMenu->last; // 
	}
}

bool exitSelected()
{
	return menuData.selected == menuData.optionCount - 1;
}
/*
void do10sStuff(byte* val, byte now)
{
	byte mod = mod10(*val);
	*val = (setting.val * 10) + mod;

	setting.val = mod;
	setting.now = now;
}

void do1sStuff(byte* val, byte max, byte now, byte newVal)
{
	if(val != NULL)
	{
		byte temp = *val;
		temp = ((temp / 10) * 10) + setting.val;
		if(temp > max)
			temp = max;
		*val = temp;
	}

	setting.val = newVal;
	setting.now = now;
}
*/
static void clear()
{
	memset(&menuData.func, 0, sizeof(menuFuncs_t));
}

void addBackOption()
{
	setMenuOption_P(menuData.optionCount - 1, menuBack, menu_exit, back);
}

void back()
{
	menuData.prevMenu != NULL ? menuData.prevMenu() : mMainOpen();
//	mMainOpen();
}

void beginAnimation(menu_f onComplete)
{
	animation_start(onComplete, ANIM_MOVE_OFF);
}

void beginAnimation2(menu_f onComplete)
{
	animation_start(onComplete, ANIM_MOVE_ON);
}

void setMenuInfo(byte optionCount, menu_type_t menuType, const char* title)
{
	clear();
	menuData.scroll = 0;
	menuData.selected = 0;
	menuData.optionCount = optionCount + 1;
	menuData.menuType = menuType;
	menuData.title = title;
}

void setMenuFuncs(menu_f btn1Func, menu_f btn2Func, menu_f btn3Func, itemLoader_f loader)
{
	menuData.func.btn1 = btn1Func;
	menuData.func.btn2 = btn2Func;
	menuData.func.btn3 = btn3Func;
	menuData.func.loader = loader;
}

void nextOption()
{
	menuData.selected++;
	if(menuData.selected >= menuData.optionCount)
		menuData.selected = 0;

	checkScroll();
}

void prevOption()
{
	menuData.selected--;
	if(menuData.selected >= menuData.optionCount)
		menuData.selected = menuData.optionCount - 1;

	checkScroll();
}

void doAction(bool anim)
{
	loader(OPERATION_ACTION, menuData.selected, anim);
}

static void checkScroll()
{
	byte scroll = menuData.scroll;
	if(menuData.selected >= scroll + MAX_MENU_ITEMS)
		scroll = (menuData.selected + 1) - MAX_MENU_ITEMS;
	else if(menuData.selected < scroll)
		scroll = menuData.selected;
	menuData.scroll = scroll;
}
