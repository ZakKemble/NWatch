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
#include "menus/sound.h"
#include "resources.h"
#include "menu.h"
#include "menus/functions.h"
#include "watchconfig.h"

#define OPTION_COUNT		4
#define OPTION_EXIT			OPTION_COUNT - 1

static s_prev_menu prevMenuData;

static void mSelect(void);
static void setVolumeUI(void);
static void setVolumeAlarm(void);
static void setVolumeHour(void);
static void setMenuOptions(void);

void mSoundOpen()
{
	setMenuInfo(OPTION_COUNT, PSTR("     < SOUND >"), MENU_TYPE_ICON, mSelect, upOption, downOption);

	setMenuOptions();
	setMenuOption_P(OPTION_EXIT, menuBack, menu_exit, back);

	setPrevMenuOpen(&prevMenuData, mSoundOpen);

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

static void setVolumeUI()
{
	byte vol = watchConfig.volUI;
	vol++;
	if(vol > 3)
		vol = 0;
	watchConfig.volUI = vol;
	setMenuOptions();
}

static void setVolumeAlarm()
{
	byte vol = watchConfig.volAlarm;
	vol++;
	if(vol > 3)
		vol = 0;
	watchConfig.volAlarm = vol;
	setMenuOptions();
}

static void setVolumeHour()
{
	byte vol = watchConfig.volHour;
	vol++;
	if(vol > 3)
		vol = 0;
	watchConfig.volHour = vol;
	setMenuOptions();
}

static void setMenuOptions()
{
	setMenuOption_P(0, PSTR("UI"), menu_volume[watchConfig.volUI], setVolumeUI);
	setMenuOption_P(1, PSTR("Alarms"), menu_volume[watchConfig.volAlarm], setVolumeAlarm);
	setMenuOption_P(2, PSTR("Hour beeps"), menu_volume[watchConfig.volHour], setVolumeHour);
}