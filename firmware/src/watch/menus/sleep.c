/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT	1

static prev_menu_s prevMenuData;

static void mSelect(void);
static void itemLoader(byte);
static display_t mDraw(void);
static void setTimeout(void);

void mSleepOpen()
{
	setMenuInfo(OPTION_COUNT, MENU_TYPE_ICON, PSTR(STR_SLEEPMENU));
	setMenuFuncs(MENUFUNC_NEXT, mSelect, MENUFUNC_PREV, itemLoader);
	menuData.func.draw = mDraw;

	setPrevMenuOpen(&prevMenuData, mSleepOpen);

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
	setMenuOption_P(0, PSTR(STR_TIMEOUT), menu_sleeptimeout, setTimeout);
//	setMenuOption_P(1, PSTR(STR_BRIGHTNESS), NULL, NULL);
//	setMenuOption_P(2, PSTR(STR_CLOCKMODE), NULL, NULL);
	addBackOption();
}

static display_t mDraw()
{
	if(menuData.selected == 0)
	{
		char buff[4];
		sprintf_P(buff, PSTR("%hhuS"), appConfig.sleepTimeout * 5);
		draw_string(buff, NOINVERT, 56, 40);
	}
	return DISPLAY_DONE;
}

static void setTimeout()
{
	byte timeout = appConfig.sleepTimeout;
	timeout++;
	if(timeout > 12)
		timeout = 0;
	appConfig.sleepTimeout = timeout;
}
