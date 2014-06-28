/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <stdio.h>
#include <string.h>
#include "typedefs.h"
#include "menus/diag.h"
#include "menu.h"
#include "menus/functions.h"
#include "devices/ds3231.h"
#include "devices/battery.h"
#include "watchconfig.h"

#define OPTION_COUNT		4
#define OPTION_EXIT			OPTION_COUNT - 1

static s_prev_menu prevMenuData;

static void mSelect(void);
static void updateTemperature(void);
static void updateVoltage(void);
static void updateFPS(void);
static void setShowFPS(void);

void mDiagOpen()
{
	setMenuInfo(OPTION_COUNT, PSTR("  < DIAGNOSTICS >"), MENU_TYPE_STR, mSelect, upOption, downOption);

	updateTemperature();
	updateVoltage();
	updateFPS();
	setMenuOption_P(OPTION_EXIT, menuBack, NULL, back);
	
	setPrevMenuOpen(&prevMenuData, mDiagOpen);
	
	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData, OPTION_EXIT);
	doAction(menuData.selected != OPTION_EXIT ? false : true);
}

static void updateTemperature()
{
	char tempInt;
	byte tempFrac;
	ds3231_temp(&tempInt, &tempFrac);
	byte temp = 0;
	if(tempFrac & 0b10000000)
		temp += 50;
	if(tempFrac & 0b01000000)
		temp += 25;
	tempFrac = temp / 10;

	char buff[20];
	sprintf_P(buff, PSTR("Temperature %hhd.%hhuC"), tempInt, tempFrac);

	setMenuOption(0, buff, NULL, updateTemperature);
}

static void updateVoltage()
{
	battery_update();
	uint voltage = battery_voltage();

	char buff[20];
	sprintf_P(buff, PSTR("Battery    %umV"), voltage);

	setMenuOption(1, buff, NULL, updateVoltage);
}

static void updateFPS()
{
	const char* str;
	if(watchConfig.showFPS)
		str = PSTR("Show FPS        Y");
	else
		str = PSTR("Show FPS        N");

	setMenuOption_P(2, str, NULL, setShowFPS);
}

static void setShowFPS()
{
	watchConfig.showFPS = !watchConfig.showFPS;
	updateFPS();
}
