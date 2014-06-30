/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT	6

static prev_menu_s prevMenuData;

static void mOpen(void);
static void mSelect(void);
static void itemLoader(byte);

void mMainOpen()
{
	buttons_setFuncs(NULL, menu_select, NULL);
	beginAnimation(mOpen);
}

static void mOpen()
{
	display_setDrawFunc(menu_draw);

	buttons_setFuncs(menu_up, menu_select, menu_down);

	setMenuInfo(OPTION_COUNT, MENU_TYPE_ICON, PSTR(STR_MAINMENU));
	setMenuFuncs(MENUFUNC_NEXT, mSelect, MENUFUNC_PREV, itemLoader);

	setPrevMenuOpen(&prevMenuData, mOpen);

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
	setMenuOption_P(0, PSTR(STR_ALARMS), menu_alarm, mAlarmsOpen);
	setMenuOption_P(1, PSTR(STR_FLASHLIGHT), menu_torch, torch_open);
#if COMPILE_STOPWATCH
	setMenuOption_P(2, PSTR(STR_STOPWATCH), menu_stopwatch, stopwatch_open);
#endif
#if COMPILE_BTRCCAR
	setMenuOption_P(2, PSTR(STR_BTRCCAR), menu_stopwatch, btrccar_open);
#endif
	//setMenuOption_P(2, PSTR(STR_TUNEMAKER), menu_tunemaker, tunemakerOpen);
	setMenuOption_P(3, PSTR(STR_GAMES), menu_games, mGamesOpen);
	//setMenuOption_P(4, PSTR(STR_CALCULATORS), menu_calc, calcOpen);
	setMenuOption_P(4, PSTR(STR_SETTINGS), menu_settings, mSettingsOpen);
	setMenuOption_P(5, PSTR(STR_DIAGNOSTICS), menu_diagnostic, mDiagOpen);

	setMenuOption_P(OPTION_COUNT, PSTR(STR_EXIT), menu_exit, menu_close);
}
