/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "typedefs.h"
#include "menus/main.h"
#include "menus/alarms.h"
#include "menus/settings.h"
#include "menus/games.h"
//#include "apps/tunemaker.h"
//#include "apps/calc.h"
#include "menus/diag.h"
#include "apps/torch.h"
#include "apps/stopwatch.h"
#include "devices/buttons.h"
#include "display.h"
#include "resources.h"
#include "menu.h"
#include "menus/functions.h"

#define OPTION_COUNT	7
#define OPTION_EXIT		OPTION_COUNT - 1

static s_prev_menu prevMenuData;

static void mOpen(void);
static void mSelect(void);

void mMainOpen()
{
	buttons_setFunc(BTN_DOWN,	NULL);
	buttons_setFunc(BTN_UP,		NULL);
	beginAnimation(mOpen);
}

static void mOpen()
{
	display_setDrawFunc(menu_draw);

	buttons_setFunc(BTN_DOWN,	menu_down);
	buttons_setFunc(BTN_UP,		menu_up);

	setMenuInfo(OPTION_COUNT, PSTR("   < MAIN MENU >"), MENU_TYPE_ICON, mSelect, upOption, downOption);

	setMenuOption_P(0, PSTR("Alarms"), menu_alarm, mAlarmsOpen);
	setMenuOption_P(1, PSTR("Flashlight"), menu_torch, torch_open);
	setMenuOption_P(2, PSTR("Stopwatch"), menu_stopwatch, stopwatch_open);
	//setMenuOption_P(2, PSTR("Tune maker"), menu_tunemaker, tunemakerOpen);
	setMenuOption_P(3, PSTR("Games"), menu_games, mGamesOpen);
	//setMenuOption_P(4, PSTR("Calculators"), menu_calc, calcOpen);
	setMenuOption_P(4, PSTR("Settings"), menu_settings, mSettingsOpen);
	setMenuOption_P(5, PSTR("Diagnostics"), menu_diagnostic, mDiagOpen);
	setMenuOption_P(OPTION_EXIT, PSTR("Exit"), menu_exit, menu_close);

	setPrevMenuOpen(&prevMenuData, mOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData, OPTION_EXIT);
	doAction(true);
}
