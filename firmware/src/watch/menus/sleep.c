/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <string.h>
#include <stdio.h>
#include "typedefs.h"
#include "menus/sleep.h"
#include "display.h"
#include "resources.h"
#include "menu.h"
#include "menus/functions.h"
#include "watchconfig.h"
#include "draw.h"

#define OPTION_COUNT	2
#define OPTION_EXIT		OPTION_COUNT - 1

static s_prev_menu prevMenuData;

static void mSelect(void);
static display_t mDraw(void);
static void setTimeout(void);

void mSleepOpen()
{
	setMenuInfo(OPTION_COUNT, PSTR("    < SLEEP >"), MENU_TYPE_ICON, mSelect, upOption, downOption);
	menuData.drawFunc = mDraw;

	setMenuOption_P(0, PSTR("Timeout"), menu_sleeptimeout, setTimeout);
//	setMenuOption_P(1, PSTR("Brightness"), NULL, NULL);
//	setMenuOption_P(2, PSTR("Clock mode"), NULL, NULL);
	setMenuOption_P(OPTION_EXIT, menuBack, menu_exit, back);

	setPrevMenuOpen(&prevMenuData, mSleepOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	bool isExiting = menuData.selected == OPTION_EXIT;
	if(isExiting)
		watchconfig_save();
	setPrevMenuExit(&prevMenuData, OPTION_EXIT);
	doAction(isExiting);
}

static display_t mDraw()
{
	if(menuData.selected == 0)
	{
		char buff[4];
		sprintf_P(buff, PSTR("%hhuS"), watchConfig.sleepTimeout * 5);
		draw_string(buff, NOINVERT, 56, 40);
	}
	return DISPLAY_DONE;
}

static void setTimeout()
{
	byte timeout = watchConfig.sleepTimeout;
	timeout++;
	if(timeout > 12)
		timeout = 0;
	watchConfig.sleepTimeout = timeout;
}