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
#define SETTING_NOW_10HOUR	1
#define SETTING_NOW_1HOUR	2
#define SETTING_NOW_10MIN	3
#define SETTING_NOW_1MIN	4

#define SETTING_NOW_DATE10	5
#define SETTING_NOW_DATE1	6
#define SETTING_NOW_MONTH	7
#define SETTING_NOW_YEAR10	8
#define SETTING_NOW_YEAR1	9

static prev_menu_s prevMenuData;
static time_s timeDataSet;

static void mDown(void);
static void mUp(void);
static void mSelect(void);
static void itemLoader(byte);
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
	memcpy(&timeDataSet, &timeData, sizeof(time_s));

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
	setMenuOption_P(5, PSTR(STR_SAVE), NULL, saveTimeDate);
	addBackOption();
}

static void selectDate()
{
	setMenuFuncs(timeDataDown, timeDataUp, mSelect, itemLoader);
	menuData.func.draw = dateDraw;
	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			setting.now = SETTING_NOW_DATE10;
			setting.val = div10(timeDataSet.date);
			break;
		case SETTING_NOW_DATE10:
			do10sStuff(&timeDataSet.date, SETTING_NOW_DATE1);
			break;
		case SETTING_NOW_DATE1:
			do1sStuff(&timeDataSet.date, 31, SETTING_NOW_MONTH, timeDataSet.month);
			if(timeDataSet.date < 1)
				timeDataSet.date = 1;
			break;
		case SETTING_NOW_MONTH:
		{
			timeDataSet.month = setting.val;
			byte numDays = time_monthDayCount(timeDataSet.month, timeDataSet.year);
			if(timeDataSet.date > numDays)
				timeDataSet.date = numDays;
			setting.now = SETTING_NOW_YEAR10;
			setting.val = div10(timeDataSet.year);
		}
			break;
		case SETTING_NOW_YEAR10:
			do10sStuff(&timeDataSet.year, SETTING_NOW_YEAR1);
			break;
		default:
			do1sStuff(&timeDataSet.year, 99, SETTING_NOW_NONE, 0);
			timeDataSet.day = time_dow(timeDataSet.year + 2000, timeDataSet.month + 1, timeDataSet.date);
			setMenuFuncs(mDown, mUp, mSelect, itemLoader);
			menuData.func.draw = NULL;
			break;
	}
}

static void selectTime()
{
	setMenuFuncs(timeDataDown, timeDataUp, mSelect, itemLoader);
	menuData.func.draw = timeDraw;
	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			setting.now = SETTING_NOW_10HOUR;
			setting.val = div10(timeDataSet.hour);
			break;
		case SETTING_NOW_10HOUR:
			do10sStuff(&timeDataSet.hour, SETTING_NOW_1HOUR);
			break;
		case SETTING_NOW_1HOUR:
			do1sStuff(&timeDataSet.hour, 23, SETTING_NOW_10MIN, div10(timeDataSet.mins));
			break;
		case SETTING_NOW_10MIN:
			do10sStuff(&timeDataSet.mins, SETTING_NOW_1MIN);
			break;
		default:
			do1sStuff(&timeDataSet.mins, 59, SETTING_NOW_NONE, 0);
			setMenuFuncs(mDown, mUp, mSelect, itemLoader);
			menuData.func.draw = NULL;
			break;
	}
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
	switch(setting.now)
	{
		case SETTING_NOW_10HOUR:
			return 2;
		case SETTING_NOW_10MIN:
			return 5;
		case SETTING_NOW_DATE10:
			return 3;
		case SETTING_NOW_MONTH:
			return 11;
	}
	return 9;
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
	sprintf_P(buff, PSTR("%6s%02hhu:%02hhu"), "", timeDataSet.hour, timeDataSet.mins);
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
