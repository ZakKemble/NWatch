/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT	4

static prev_menu_s prevMenuData;

static void mSelect(void);
static void itemLoader(byte);
static void setBrightness(void);
static void setInvert(void);
static void setRotate(void);
#if COMPILE_ANIMATIONS
static void setAnimations(void);
#endif
static void setMenuOptions(void);

void mDisplayOpen()
{
	setMenuInfo(OPTION_COUNT, MENU_TYPE_ICON, PSTR(STR_DISPLAYMENU));
	setMenuFuncs(MENUFUNC_NEXT, mSelect, MENUFUNC_PREV, itemLoader);

//	setMenuOptions();

	setPrevMenuOpen(&prevMenuData, mDisplayOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	bool isExiting = exitSelected();
	if(isExiting)
		appconfig_save();
	setPrevMenuExit(&prevMenuData);
	doAction(isExiting);
}

static void itemLoader(byte num)
{
	UNUSED(num);
	setMenuOptions();
	addBackOption();
}

static void setBrightness()
{
	byte brightness = appConfig.brightness;
	brightness++;
	if(brightness > 3)
		brightness = 0;
	appConfig.brightness = brightness;
//	setMenuOptions();

	oled_setBrightness(brightness * 85);
}

static void setInvert()
{
	bool invert = !appConfig.invert;
	appConfig.invert = invert;
//	setMenuOptions();

	oled_setInvert(invert);
}

static void setRotate()
{
	bool rotate = !appConfig.display180;
	appConfig.display180 = rotate;
//	setMenuOptions();

	oled_set180(rotate);
}

#if COMPILE_ANIMATIONS
static void setAnimations()
{
	bool anims = !appConfig.animations;
	appConfig.animations = anims;
//	setMenuOptions();
}
#endif

static void setMenuOptions()
{
	setMenuOption_P(0, PSTR(STR_BRIGHTNESS), menu_brightness[appConfig.brightness], setBrightness);
	setMenuOption_P(1, PSTR(STR_INVERT), menu_invert, setInvert);
	setMenuOption_P(2, PSTR(STR_ROTATE), menu_rotate, setRotate);
#if COMPILE_ANIMATIONS
	setMenuOption_P(3, PSTR(STR_ANIMATIONS), menu_anim[appConfig.animations], setAnimations);
#endif
}
