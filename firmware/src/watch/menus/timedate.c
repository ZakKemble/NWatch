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
#include "menus/timedate.h"
#include "display.h"
#include "menu.h"
#include "menus/functions.h"
#include "time.h"
#include "draw.h"
#include "resources.h"

#define OPTION_COUNT		7
#define OPTION_EXIT			OPTION_COUNT - 1

#define SETTING_NOW_NONE	0
#define SETTING_NOW_10HOUR	1
#define SETTING_NOW_1HOUR	2
#define SETTING_NOW_10MIN	3
#define SETTING_NOW_1MIN	4

#define SETTING_NOW_DATE10	5
#define SETTING_NOW_DATE1	6
#define SETTING_NOW_MONTH	7
#define SETTING_NOW_YEAR10	8
#define SETTING_NOW_YEAR1	9

static s_prev_menu prevMenuData;
static s_menuNowSetting setting;
static s_time timeDataSet;

static void mDown(void);
static void mUp(void);
static void mSelect(void);
static void selectDate(void);
static void selectTime(void);
static display_t dateDraw(void);
static display_t timeDraw(void);
static void timeDataUp(void);
static void timeDataDown(void);
static byte getMaxValForSetting(void);
static void showTimeStr(void);
static void showDateStr(void);
static void makeTimeStr(char*);
static void makeDateStr(char*);
static void saveTimeDate(void);

void mTimeDateOpen()
{
	// Create copy of current time & date
	memcpy(&timeDataSet, &timeData, sizeof(s_time));

	setMenuInfo(OPTION_COUNT, PSTR("  < TIME & DATE >"), MENU_TYPE_STR, mSelect, mUp, mDown);

	showDateStr();
	showTimeStr();
	setMenuOption_P(5, PSTR("Save"), NULL, saveTimeDate);
	setMenuOption_P(OPTION_EXIT, menuBack, NULL, back);

	setPrevMenuOpen(&prevMenuData, mTimeDateOpen);

	menuData.selected = 1;
	
	beginAnimation2(NULL);
}

static void mDown()
{
	downOption();

	// Some lines are blank, skip them
	if(menuData.selected == 0 || menuData.selected == 2 || menuData.selected == 4)
		downOption();
}

static void mUp()
{
	upOption();

	// Some lines are blank, skip them
	if(menuData.selected == 0 || menuData.selected == 2 || menuData.selected == 4)
		upOption();
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData, OPTION_EXIT);
	doAction(menuData.selected == OPTION_EXIT);
}

static void selectDate()
{
	menuData.downFunc = timeDataUp;
	menuData.upFunc = timeDataDown;
	menuData.drawFunc = dateDraw;
	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			setting.now = SETTING_NOW_DATE10;
			setting.val = timeDataSet.date / 10;
			break;
		case SETTING_NOW_DATE10:
			{
				byte mod = timeDataSet.date % 10;
				timeDataSet.date = (setting.val * 10) + mod;
				setting.now = SETTING_NOW_DATE1;
				setting.val = mod;
			}
			break;
		case SETTING_NOW_DATE1:
			timeDataSet.date = ((timeDataSet.date / 10) * 10) + setting.val;
			if(timeDataSet.date < 1)
				timeDataSet.date = 1;
			else if(timeDataSet.date > 31)
				timeDataSet.date = 31;
			setting.now = SETTING_NOW_MONTH;
			setting.val = timeDataSet.month;
			break;
		case SETTING_NOW_MONTH:
			timeDataSet.month = setting.val;
			byte maxDays = 31;
			byte month = timeDataSet.month;
			if(month == 3 || month == 5 || month == 8 || month == 10)
				maxDays = 30;
			else if(month == 1)
				maxDays = time_isLeapYear(timeDataSet.year) ? 29 : 28;
			if(timeDataSet.date > maxDays)
				timeDataSet.date = maxDays;
			setting.now = SETTING_NOW_YEAR10;
			setting.val = timeDataSet.year / 10;
			break;
		case SETTING_NOW_YEAR10:
			{
				byte mod = timeDataSet.year % 10;
				timeDataSet.year = (setting.val * 10) + mod;
				setting.now = SETTING_NOW_YEAR1;
				setting.val = mod;
			}
			break;
		default:
			timeDataSet.year = ((timeDataSet.year / 10) * 10) + setting.val;
			timeDataSet.day = time_dow(timeDataSet.year + 2000, timeDataSet.month + 1, timeDataSet.date);
			setting.now = SETTING_NOW_NONE;
			menuData.downFunc = mUp;
			menuData.upFunc	= mDown;
			menuData.drawFunc = NULL;
			break;
	}
	
	showDateStr();
}

static void selectTime()
{
	menuData.downFunc = timeDataUp;
	menuData.upFunc = timeDataDown;
	menuData.drawFunc = timeDraw;
	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			setting.now = SETTING_NOW_10HOUR;
			setting.val = timeDataSet.hours / 10;
			break;
		case SETTING_NOW_10HOUR:
			{
				byte mod = timeDataSet.hours % 10;
				timeDataSet.hours = (setting.val * 10) + mod;
				setting.now = SETTING_NOW_1HOUR;
				setting.val = mod;
			}
			break;
		case SETTING_NOW_1HOUR:
			timeDataSet.hours = ((timeDataSet.hours / 10) * 10) + setting.val;
			if(timeDataSet.hours > 23)
				timeDataSet.hours = 23;
			setting.now = SETTING_NOW_10MIN;
			setting.val = timeDataSet.mins / 10;
			break;
		case SETTING_NOW_10MIN:
			{
				byte mod = timeDataSet.mins % 10;
				timeDataSet.mins = (setting.val * 10) + mod;
				setting.now = SETTING_NOW_1MIN;
				setting.val = mod;
			}		
			break;
		default:
			timeDataSet.mins = ((timeDataSet.mins / 10) * 10) + setting.val;
			if(timeDataSet.mins > 59)
				timeDataSet.mins = 59;
			setting.now = SETTING_NOW_NONE;
			menuData.downFunc = mUp;
			menuData.upFunc	= mDown;
			menuData.drawFunc = NULL;
			break;
	}

	showTimeStr();
}

static display_t dateDraw()
{
	byte x;
	byte w = 5;
	switch(setting.now)
	{
		case SETTING_NOW_DATE10:
			x = 28;
			break;
		case SETTING_NOW_DATE1:
			x = 35;
			break;
		case SETTING_NOW_MONTH:
			x = 49;
			w = 17;
			break;
		case SETTING_NOW_YEAR10:
			x = 91;
			break;
		case SETTING_NOW_YEAR1:
			x = 98;
			break;
		default:
			x = 0;
			return DISPLAY_DONE;
	}

	draw_clearArea(x, 16, w);

	char buff[4];
	if(setting.now != SETTING_NOW_MONTH)
		sprintf_P(buff, PSTR("%hhu"), setting.val);
	else
		strcpy_P(buff, months[setting.val]);
	draw_string(buff, true, x, 16);
	
	return DISPLAY_DONE;
}

static display_t timeDraw()
{
	byte x;
	switch(setting.now)
	{
		case SETTING_NOW_10HOUR:
			x = 49;
			break;
		case SETTING_NOW_1HOUR:
			x = 56;
			break;
		case SETTING_NOW_10MIN:
			x = 70;
			break;
		case SETTING_NOW_1MIN:
			x = 77;
			break;
		default:
			x = 0;
			return DISPLAY_DONE;
	}

	draw_clearArea(x, 32, 5);

	char buff[2];
	buff[0] = setting.val + 48;
	buff[1] = 0x00;
	draw_string(buff, true, x, 32);

	return DISPLAY_DONE;
}

static void timeDataUp()
{
	setting.val++;
	if(setting.val > getMaxValForSetting())
		setting.val = 0;
}

static void timeDataDown()
{
	setting.val--;
	byte max = getMaxValForSetting();
	if(setting.val > max)
		setting.val = max;
}

static byte getMaxValForSetting()
{
	byte max;
	switch(setting.now)
	{
		case SETTING_NOW_10HOUR:
			max = 2;
			break;
		case SETTING_NOW_1HOUR:
			max = 9;
			break;
		case SETTING_NOW_10MIN:
			max = 5;
			break;
		case SETTING_NOW_1MIN:
			max = 9;
			break;
		case SETTING_NOW_DATE10:
			max = 3;
			break;
		case SETTING_NOW_DATE1:
			max = 9;
			break;
		case SETTING_NOW_MONTH:
			max = 11;
			break;
		case SETTING_NOW_YEAR10:
			max = 9;
			break;
		case SETTING_NOW_YEAR1:
			max = 9;
			break;
		default:
			max = 9;
			break;
	}
	return max;
}

static void showTimeStr()
{
	char buff[12];
	makeTimeStr(buff);
	setMenuOption(3, buff, NULL, selectTime);
}

static void showDateStr()
{
	char buff[21];
	makeDateStr(buff);
	setMenuOption(1, buff, NULL, selectDate);
}

static void makeTimeStr(char* buff)
{
	sprintf_P(buff, PSTR("%6s%02hhu:%02hhu"), "", timeDataSet.hours, timeDataSet.mins);
}

static void makeDateStr(char* buff)
{
	char month[4];
	strcpy_P(month, months[timeDataSet.month]);
	sprintf_P(buff, PSTR("%3s%02hhu %s 20%02hhu"), "", timeDataSet.date, month, timeDataSet.year);
}

static void saveTimeDate()
{
	time_set(&timeDataSet);
}
