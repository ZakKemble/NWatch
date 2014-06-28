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
#include "common.h"
#include "menus/alarms.h"
#include "display.h"
#include "menu.h"
#include "menus/functions.h"
#include "alarm.h"
#include "draw.h"

#define OPTION_COUNT	ALARM_COUNT + 1
#define OPTION_EXIT		OPTION_COUNT - 1

#define SETTING_NOW_NONE		0
#define SETTING_NOW_EN			1
#define SETTING_NOW_10HOUR		2
#define SETTING_NOW_1HOUR		3
#define SETTING_NOW_10MIN		4
#define SETTING_NOW_1MIN		5
#define SETTING_NOW_DAY_MON		6
#define SETTING_NOW_DAY_TUE		7
#define SETTING_NOW_DAY_WED		8
#define SETTING_NOW_DAY_THUR	9
#define SETTING_NOW_DAY_FRI		10
#define SETTING_NOW_DAY_SAT		11
#define SETTING_NOW_DAY_SUN		12

#define ALARM_SET_CHAR ('X')
#define ALARM_UNSET_CHAR (' ')

static s_prev_menu prevMenuData;

static s_menuNowSetting setting;

static void mSelect(void);
static void selectAlarm(void);
static display_t alarmsDraw(void);
static void alarmsDown(void);
static void alarmsUp(void);
static byte getMaxValForSetting(void);
static void showAlarmStr(byte, s_alarm*);
static void makeAlarmStr(char*, s_alarm*);

void mAlarmsOpen()
{
	setMenuInfo(OPTION_COUNT, PSTR("    < ALARMS >"), MENU_TYPE_STR, mSelect, upOption, downOption);

	s_alarm* alarms = alarm_get();

	LOOP(ALARM_COUNT, i)
		showAlarmStr(i, &alarms[i]);

	setMenuOption_P(OPTION_EXIT, menuBack, NULL, back);
	
	setPrevMenuOpen(&prevMenuData, mAlarmsOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData, OPTION_EXIT);
	doAction(menuData.selected == OPTION_EXIT);
}

static void selectAlarm()
{
	static s_alarm alarm;

	menuData.downFunc = alarmsDown;
	menuData.upFunc = alarmsUp;
	menuData.drawFunc = alarmsDraw;
	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			memcpy(&alarm, &alarm_get()[menuData.selected], sizeof(s_alarm));
			setting.now = SETTING_NOW_EN;
			setting.val = alarm.enabled;
			break;
		case SETTING_NOW_EN:
			alarm.enabled = setting.val;
			setting.now = SETTING_NOW_10HOUR;
			setting.val = alarm.hour / 10;
			break;
		case SETTING_NOW_10HOUR:
			{
				byte mod = alarm.hour % 10;
				alarm.hour = (setting.val * 10) + mod;
				setting.now = SETTING_NOW_1HOUR;
				setting.val = mod;
			}
			break;
		case SETTING_NOW_1HOUR:
			alarm.hour = ((alarm.hour / 10) * 10) + setting.val;
			if(alarm.hour > 23)
				alarm.hour = 23;
			setting.now = SETTING_NOW_10MIN;
			setting.val = alarm.min / 10;
			break;
		case SETTING_NOW_10MIN:
			{
				byte mod = alarm.min % 10;
				alarm.min = (setting.val * 10) + mod;
				setting.now = SETTING_NOW_1MIN;
				setting.val = mod;
			}
			break;
		case SETTING_NOW_1MIN:
			alarm.min = ((alarm.min / 10) * 10) + setting.val;
			if(alarm.min > 59)
				alarm.min = 59;
			setting.now = SETTING_NOW_DAY_MON;
			setting.val = alarm.mon;
			break;
		case SETTING_NOW_DAY_MON:
			alarm.mon = setting.val;
			setting.now = SETTING_NOW_DAY_TUE;
			setting.val = alarm.tues;
			break;
		case SETTING_NOW_DAY_TUE:
			alarm.tues = setting.val;
			setting.now = SETTING_NOW_DAY_WED;
			setting.val = alarm.wed;
			break;
		case SETTING_NOW_DAY_WED:
			alarm.wed = setting.val;
			setting.now = SETTING_NOW_DAY_THUR;
			setting.val = alarm.thurs;
			break;
		case SETTING_NOW_DAY_THUR:
			alarm.thurs = setting.val;
			setting.now = SETTING_NOW_DAY_FRI;
			setting.val = alarm.fri;
			break;
		case SETTING_NOW_DAY_FRI:
			alarm.fri = setting.val;
			setting.now = SETTING_NOW_DAY_SAT;
			setting.val = alarm.sat;
			break;
		case SETTING_NOW_DAY_SAT:
			alarm.sat = setting.val;
			setting.now = SETTING_NOW_DAY_SUN;
			setting.val = alarm.sun;
			break;
		default:
			alarm.sun = setting.val;
			memcpy(&alarm_get()[menuData.selected], &alarm, sizeof(s_alarm));
			alarm_save();
			setting.now = SETTING_NOW_NONE;
			menuData.downFunc = upOption;
			menuData.upFunc = downOption;
			menuData.drawFunc = NULL;
			break;
	}
	
	showAlarmStr(menuData.selected, &alarm);
}

static display_t alarmsDraw()
{
	byte x;
	char buff[2];
	buff[1] = 0x00;
	switch(setting.now)
	{
		case SETTING_NOW_EN:
			x = 7;
			buff[0] = setting.val ? ALARM_SET_CHAR : ALARM_UNSET_CHAR;
			break;
		case SETTING_NOW_10HOUR:
			x = 21;
			buff[0] = setting.val + 48;
			break;
		case SETTING_NOW_1HOUR:
			x = 28;
			buff[0] = setting.val + 48;
			break;
		case SETTING_NOW_10MIN:
			x = 42;
			buff[0] = setting.val + 48;
			break;
		case SETTING_NOW_1MIN:
			x = 49;
			buff[0] = setting.val + 48;
			break;
		case SETTING_NOW_DAY_MON:
			x = 63;
			buff[0] = setting.val ? 'M' : '-';
			break;
		case SETTING_NOW_DAY_TUE:
			x = 70;
			buff[0] = setting.val ? 'T' : '-';
			break;
		case SETTING_NOW_DAY_WED:
			x = 77;
			buff[0] = setting.val ? 'W' : '-';
			break;
		case SETTING_NOW_DAY_THUR:
			x = 84;
			buff[0] = setting.val ? 'T' : '-';
			break;
		case SETTING_NOW_DAY_FRI:
			x = 91;
			buff[0] = setting.val ? 'F' : '-';
			break;
		case SETTING_NOW_DAY_SAT:
			x = 98;
			buff[0] = setting.val ? 'S' : '-';
			break;
		case SETTING_NOW_DAY_SUN:
			x = 105;
			buff[0] = setting.val ? 'S' : '-';
			break;
		default:
			return DISPLAY_DONE;
	}

	byte y = 8 + ((menuData.selected * 8) - (menuData.scroll * 8));
	draw_clearArea(x, y, 5);

	draw_string(buff, true, x, y);
	
	return DISPLAY_DONE;
}

static void alarmsDown()
{
	setting.val++;
	if(setting.val > getMaxValForSetting())
		setting.val = 0;
}

static void alarmsUp()
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
		case SETTING_NOW_EN:
		case SETTING_NOW_DAY_MON:
		case SETTING_NOW_DAY_TUE:
		case SETTING_NOW_DAY_WED:
		case SETTING_NOW_DAY_THUR:
		case SETTING_NOW_DAY_FRI:
		case SETTING_NOW_DAY_SAT:
		case SETTING_NOW_DAY_SUN:
			max = 1;
			break;
		default:
			max = 1;
			break;
	}
	return max;
}

static void showAlarmStr(byte idx, s_alarm* alarm)
{
	char buff[16];
	makeAlarmStr(buff, alarm);
	setMenuOption(idx, buff, NULL, selectAlarm);
}

static void makeAlarmStr(char* buff, s_alarm* alarm)
{
	sprintf_P(buff, PSTR("  %02hhu:%02hhu "), alarm->hour, alarm->min);

	buff[0] = alarm->enabled ? ALARM_SET_CHAR : ALARM_UNSET_CHAR;
	buff[15] = 0x00;

	LOOP(7, i)
		buff[i + 8] = alarmDayEnabled(alarm->days, i) ? alarm_getDayLetter(i) : '-';	
}
