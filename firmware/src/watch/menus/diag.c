/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT		4

static prev_menu_s prevMenuData;

static void mSelect(void);
static void itemLoader(byte);
static void updateTemperature(void);
static void updateVoltage(void);
static void updateFPS(void);
static void setShowFPS(void);
static void batteryUpdate(void);

void mDiagOpen()
{
	rtc_tempUpdate();
	battery_update();

	setMenuInfo(OPTION_COUNT, MENU_TYPE_STR, PSTR(STR_DIAGNOSTICSMENU));
	setMenuFuncs(MENUFUNC_NEXT, MENUFUNC_PREV, mSelect, itemLoader);

	setPrevMenuOpen(&prevMenuData, mDiagOpen);
	
	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData);
	doAction(exitSelected());
}

static void itemLoader(byte num)
{
	switch(num)
	{
		case 0:
			updateTemperature();
			return;
		case 1:
			updateVoltage();
			return;
		case 2:
			updateFPS();
			return;
	}

	setMenuOption_P(3, PSTR("FW     " FW_VERSION), NULL, NULL);
	addBackOption();
}

static void updateTemperature()
{
	rtc_temperature_s temperature;
	rtc_tempGet(&temperature);

	byte temp = 0;
	if(temperature.frac & 0b10000000)
		temp += 5;
	if(temperature.frac & 0b01000000)
		temp += 2;
	//temperature.frac = div10(temp);

	char buff[24];
	sprintf_P(buff, PSTR(STR_TEMPERATURE), temperature.whole, temp);

	setMenuOption(0, buff, NULL, rtc_tempUpdate);
}

static void updateVoltage()
{
	char buff[24];
	sprintf_P(buff, PSTR(STR_BATTERY), battery_voltage());

	setMenuOption(1, buff, NULL, batteryUpdate);
}

static void updateFPS()
{
	char buff[20];
	char c = appConfig.showFPS ? CHAR_YES : CHAR_NO;
	sprintf_P(buff, PSTR(STR_SHOWFPS), c);
	setMenuOption(2, buff, NULL, setShowFPS);
}

static void setShowFPS()
{
	appConfig.showFPS = !appConfig.showFPS;
}

static void batteryUpdate()
{
	battery_updateNow();
}
