/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT		3

static prev_menu_s prevMenuData;

static void mSelect(void);
static void itemLoader(byte);
static void setVolumeUI(void);
static void setVolumeAlarm(void);
static void setVolumeHour(void);
static inline byte setVolume(byte);
static void setMenuOptions(void);

void mSoundOpen()
{
	setMenuInfo(OPTION_COUNT, MENU_TYPE_ICON, PSTR(STR_SOUNDMENU));
	setMenuFuncs(MENUFUNC_NEXT, mSelect, MENUFUNC_PREV, itemLoader);

//	setMenuOptions();

	setPrevMenuOpen(&prevMenuData, mSoundOpen);

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

static void setVolumeUI()
{
	appConfig.volUI = setVolume(appConfig.volUI);
//	setMenuOptions();
}

static void setVolumeAlarm()
{
	appConfig.volAlarm = setVolume(appConfig.volAlarm);
//	setMenuOptions();
}

static void setVolumeHour()
{
	appConfig.volHour = setVolume(appConfig.volHour);
//	setMenuOptions();
}

static inline byte setVolume(byte vol)
{
	vol++;
	if(vol > 3)
		vol = 0;
	return vol;
}

static void setMenuOptions()
{
	setMenuOption_P(0, PSTR(STR_UI), menu_volume[appConfig.volUI], setVolumeUI);
	setMenuOption_P(1, PSTR(STR_ALARMS), menu_volume[appConfig.volAlarm], setVolumeAlarm);
	setMenuOption_P(2, PSTR(STR_HOURBEEPS), menu_volume[appConfig.volHour], setVolumeHour);
}
