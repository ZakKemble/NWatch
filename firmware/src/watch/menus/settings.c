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

void mSettingsOpen()
{
	setMenuInfo(OPTION_COUNT, MENU_TYPE_ICON, PSTR(STR_SETTINGSMENU));
	setMenuFuncs(MENUFUNC_NEXT, mSelect, MENUFUNC_PREV, itemLoader);

	setPrevMenuOpen(&prevMenuData, mSettingsOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData);
	doAction(true);
}

static void itemLoader(byte num)
{
	UNUSED(num);
	setMenuOption_P(0, PSTR(STR_TIMEDATE), menu_timedate, mTimeDateOpen);
	setMenuOption_P(1, PSTR(STR_SLEEP), menu_sleep, mSleepOpen);
	setMenuOption_P(2, PSTR(STR_SOUND), menu_sound, mSoundOpen);
	setMenuOption_P(3, PSTR(STR_DISPLAY), menu_display, mDisplayOpen);
//	setMenuOption_P(4, PSTR(STR_LEDS), NULL, NULL);
//	setMenuOption_P(5, PSTR(STR_UI), NULL, NULL);
//	setMenuOption_P(6, PSTR(STR_RCSETTINGS), NULL, NULL);
	addBackOption();
}
