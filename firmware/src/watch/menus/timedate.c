/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT		6

#define SETTING_NOW_NONE	0
#define SETTING_NOW_TIMEMODE	1
#define SETTING_NOW_HOUR	2
#define SETTING_NOW_MIN		3
#define SETTING_NOW_AMPM	4

#define SETTING_NOW_DATE	5
#define SETTING_NOW_MONTH	6
#define SETTING_NOW_YEAR	7

static prev_menu_s prevMenuData;
static timeDate_s timeDateSet;
static timemode_t timeMode;
static bool saved;

static void mDown(void);
static void mUp(void);
static void mSelect(void);
static void itemLoader(byte);
static void beginSelect(void);
static void endSelect(void);
static void selectDate(void);
static void selectTime(void);
static display_t timeDateDraw(void);
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
	memcpy(&timeDateSet, &timeDate, sizeof(timeDate_s));
	timeMode = appConfig.timeMode;
	saved = false;

	setMenuInfo(OPTION_COUNT, MENU_TYPE_STR, PSTR(STR_TIMEDATEMENU));
	setMenuFuncs(mDown, mUp, mSelect, itemLoader);

	setPrevMenuOpen(&prevMenuData, mTimeDateOpen);

	menuData.selected = 1;
	
	beginAnimation2(NULL);
}

static void mDown()
{
	nextOption();

	// Some lines are blank, skip them
	if(menuData.selected == 0 || menuData.selected == 2 || menuData.selected == 4)
		nextOption();
}

static void mUp()
{
	prevOption();

	// Some lines are blank, skip them
	if(menuData.selected == 0 || menuData.selected == 2 || menuData.selected == 4)
		prevOption();
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData);
	doAction(exitSelected());
}

static void itemLoader(byte num)
{
	UNUSED(num);
	showDateStr();
	showTimeStr();
	setMenuOption_P(5, saved ? PSTR(STR_SAVED) : PSTR(STR_SAVE), NULL, saveTimeDate);
	addBackOption();
}

static void beginSelect()
{
	setMenuFuncs(timeDataDown, timeDataUp, mSelect, itemLoader);
	menuData.func.draw = timeDateDraw;
}

static void endSelect()
{
	setting.now = SETTING_NOW_NONE;
	setMenuFuncs(mDown, mUp, mSelect, itemLoader);
	menuData.func.draw = NULL;
}

static void selectDate()
{
	beginSelect();
	
	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			setting.now = SETTING_NOW_DATE;
			setting.val = timeDateSet.date.date;
			break;
		case SETTING_NOW_DATE:
			timeDateSet.date.date = setting.val;
			if(timeDateSet.date.date < 1)
				timeDateSet.date.date = 1;
			setting.now = SETTING_NOW_MONTH;
			setting.val = timeDateSet.date.month;
			break;
		case SETTING_NOW_MONTH:
		{
			timeDateSet.date.month = setting.val;
			byte numDays = time_monthDayCount(timeDateSet.date.month, timeDateSet.date.year);
			if(timeDateSet.date.date > numDays)
				timeDateSet.date.date = numDays;
			setting.now = SETTING_NOW_YEAR;
			setting.val = timeDateSet.date.year;
		}
			break;
		default: // Also SETTING_NOW_YEAR
			timeDateSet.date.year = setting.val;
			timeDateSet.date.day = time_dow(timeDateSet.date.year, timeDateSet.date.month, timeDateSet.date.date);

			endSelect();
			break;
	}
}

static void selectTime()
{
	beginSelect();

	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			setting.now = SETTING_NOW_TIMEMODE;
			setting.val = timeMode;
			break;
		case SETTING_NOW_TIMEMODE:
			timeMode = setting.val;
			time_timeMode(&timeDateSet.time, timeMode);
			setting.val = timeDateSet.time.hour;
			setting.now = SETTING_NOW_HOUR;
			break;
		case SETTING_NOW_HOUR:
			timeDateSet.time.hour = setting.val;
			setting.val = timeDateSet.time.mins;
			setting.now = SETTING_NOW_MIN;
			break;
		case SETTING_NOW_MIN:
			timeDateSet.time.mins = setting.val;
			if(timeMode == TIMEMODE_12HR)
			{
				setting.now = SETTING_NOW_AMPM;
				setting.val = (timeDateSet.time.ampm == CHAR_AM);
			}
			else
			{
				timeDateSet.time.ampm = CHAR_24;
				endSelect();
			}
			break;
		default: // Also SETTING_NOW_AMPM
			timeDateSet.time.ampm = setting.val ? CHAR_AM : CHAR_PM;
			endSelect();
			break;
	}
}

static display_t timeDateDraw()
{
	byte x;
	byte y;
	byte w = 14;
	switch(setting.now)
	{
		case SETTING_NOW_DATE:
			x = 28;
			y = 16;
			break;
		case SETTING_NOW_MONTH:
			x = 49;
			w = 17;
			y = 16;
			break;
		case SETTING_NOW_YEAR:
			x = 91;
			y = 16;
			break;
		case SETTING_NOW_TIMEMODE:
			x = 27;
			w = 28;
			y = 32;
			break;
		case SETTING_NOW_HOUR:
			x = 63;
			y = 32;
			break;
		case SETTING_NOW_MIN:
			x = 84;
			y = 32;
			break;
		case SETTING_NOW_AMPM:
			x = 98;
			y = 32;
			break;
		default:
			return DISPLAY_DONE;
	}

	draw_clearArea(x, y, w);

	char buff[max(BUFFSIZE_STR_MONTHS, 5)];
	
	if(setting.now == SETTING_NOW_MONTH)
		strcpy_P(buff, months[setting.val]);
	else if(setting.now == SETTING_NOW_AMPM)
	{
		buff[0] = setting.val ? CHAR_AM : CHAR_PM;
		buff[1] = 0x00;
	}
	else if(setting.now == SETTING_NOW_TIMEMODE)
	{
		// Setting these bytes individually creates smaller code
		if(setting.val)
		{
			buff[0] = '1';
			buff[1] = '2';
		}
		else
		{
			buff[0] = '2';
			buff[1] = '4';
		}
		buff[2] = 'h';
		buff[3] = 'r';
		buff[4] = 0x00;
	}
	else
		sprintf_P(buff, PSTR("%02hhu"), setting.val);

	draw_string(buff, true, x, y);

	return DISPLAY_DONE;
}

static void timeDataUp()
{
	setting.val++;
	if(setting.val > getMaxValForSetting())
		setting.val = 0;

	if(((setting.now == SETTING_NOW_HOUR && timeMode == TIMEMODE_12HR) || setting.now == SETTING_NOW_DATE) && setting.val == 0)
		setting.val = 1;

	saved = false;
}

static void timeDataDown()
{
	setting.val--;
	
	if(setting.val == 0)
	{
		if(setting.now == SETTING_NOW_HOUR && timeMode == TIMEMODE_12HR)
			setting.val = 12;
		else if(setting.now == SETTING_NOW_DATE)
			setting.val = 31;
	}
	
	byte max = getMaxValForSetting();
	if(setting.val > max) // Overflow
		setting.val = max;

	saved = false;
}

static byte getMaxValForSetting()
{
	switch(setting.now)
	{
		case SETTING_NOW_TIMEMODE:
		case SETTING_NOW_AMPM:
			return 1;
		case SETTING_NOW_HOUR:
		{
			if(timeMode == TIMEMODE_12HR)
				return 12;
			return 23;
		}
		case SETTING_NOW_DATE:
			return 31;
		case SETTING_NOW_MONTH:
			return 11;
		case SETTING_NOW_YEAR:
			return 99;
	}
	return 59;
}

static void showTimeStr()
{
	char buff[17];
	makeTimeStr(buff);
	setMenuOption(3, buff, NULL, selectTime);
}

static void showDateStr()
{
	char buff[BUFFSIZE_STR_MONTHS + 14];
	makeDateStr(buff);
	setMenuOption(1, buff, NULL, selectDate);
}

static void makeTimeStr(char* buff)
{
	byte timeModeVal = (timeDateSet.time.ampm != CHAR_24) ? 12 : 24;
	sprintf_P(buff, PSTR("   %hhuhr %02hhu:%02hhu%c"), timeModeVal, timeDateSet.time.hour, timeDateSet.time.mins, timeDateSet.time.ampm);
}

static void makeDateStr(char* buff)
{
	char month[BUFFSIZE_STR_MONTHS];
	strcpy_P(month, months[timeDateSet.date.month]);
	sprintf_P(buff, PSTR("   %02hhu %s 20%02hhu"), timeDateSet.date.date, month, timeDateSet.date.year);
}

static void saveTimeDate()
{
	appConfig.timeMode = timeMode;
	appconfig_save();

	time_set(&timeDateSet);
	memcpy(&timeDateSet, &timeDate, sizeof(timeDate_s));

	saved = true;
}
