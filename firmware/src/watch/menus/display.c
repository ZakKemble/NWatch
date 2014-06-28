/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <string.h>
#include "typedefs.h"
#include "menus/display.h"
#include "resources.h"
#include "menu.h"
#include "menus/functions.h"
#include "devices/oled.h"
#include "watchconfig.h"

#define OPTION_COUNT	5
#define OPTION_EXIT		OPTION_COUNT - 1

static s_prev_menu prevMenuData;

static void mSelect(void);
static void setBrightness(void);
static void setInvert(void);
static void setRotate(void);
static void setAnimations(void);
static void setMenuOptions(void);

void mDisplayOpen()
{
	setMenuInfo(OPTION_COUNT, PSTR("    < DISPLAY >"), MENU_TYPE_ICON, mSelect, upOption, downOption);

	setMenuOptions();
	setMenuOption_P(OPTION_EXIT, menuBack, menu_exit, back);
	
	setPrevMenuOpen(&prevMenuData, mDisplayOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	bool isExiting = menuData.selected == OPTION_EXIT;
	if(isExiting)
		watchconfig_save();
	setPrevMenuExit(&prevMenuData,OPTION_EXIT);
	doAction(isExiting);
}

static void setBrightness()
{
	byte brightness = watchConfig.brightness;
	brightness++;
	if(brightness > 3)
		brightness = 0;
	watchConfig.brightness = brightness;
	setMenuOptions();

	oled_setBrightness(brightness * 85);
}

static void setInvert()
{
	bool invert = !watchConfig.invert;
	watchConfig.invert = invert;
	setMenuOptions();

	oled_setInvert(invert);
}

static void setRotate()
{
	bool rotate = !watchConfig.display180;
	watchConfig.display180 = rotate;
	setMenuOptions();

	oled_set180(rotate);
}

static void setAnimations()
{
	bool anims = !watchConfig.animations;
	watchConfig.animations = anims;
	setMenuOptions();
}

static void setMenuOptions()
{
	setMenuOption_P(0, PSTR("Brightness"), menu_brightness[watchConfig.brightness], setBrightness);
	setMenuOption_P(1, PSTR("Invert"), menu_invert, setInvert);
	setMenuOption_P(2, PSTR("Rotate"), menu_rotate, setRotate);
	setMenuOption_P(3, PSTR("Animations"), menu_anim[watchConfig.animations], setAnimations);
}