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
#include "menus/settings.h"
#include "menus/timedate.h"
#include "menus/sleep.h"
#include "menus/sound.h"
#include "menus/display.h"
#include "resources.h"
#include "menu.h"
#include "menus/functions.h"

#define OPTION_COUNT	5
#define OPTION_EXIT		OPTION_COUNT - 1

static s_prev_menu prevMenuData;

static void mSelect(void);

void mSettingsOpen()
{
	setMenuInfo(OPTION_COUNT, PSTR("   < SETTINGS >"), MENU_TYPE_ICON, mSelect, upOption, downOption);

	setMenuOption_P(0, PSTR("Time & date"), menu_timedate, mTimeDateOpen);
	setMenuOption_P(1, PSTR("Sleep"), menu_sleep, mSleepOpen);
	setMenuOption_P(2, PSTR("Sound"), menu_sound, mSoundOpen);
	setMenuOption_P(3, PSTR("Display"), menu_display, mDisplayOpen);
//	setMenuOption_P(4, PSTR("LEDs"), NULL, NULL);
//	setMenuOption_P(5, PSTR("UI"), NULL, NULL);
//	setMenuOption_P(6, PSTR("RC Settings"), NULL, NULL);
	setMenuOption_P(OPTION_EXIT, menuBack, menu_exit, back);
	
	setPrevMenuOpen(&prevMenuData, mSettingsOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData, OPTION_EXIT);
	doAction(true);
}
