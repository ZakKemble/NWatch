/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define OPTION_COUNT	ALARM_COUNT

#define SETTING_NOW_NONE		0
#define SETTING_NOW_EN			1
#define SETTING_NOW_HOUR		2
#define SETTING_NOW_MIN			3
#define SETTING_NOW_AMPM		4
#define SETTING_NOW_DAY_MON		5
#define SETTING_NOW_DAY_TUE		6
#define SETTING_NOW_DAY_WED		7
#define SETTING_NOW_DAY_THUR	8
#define SETTING_NOW_DAY_FRI		9
#define SETTING_NOW_DAY_SAT		10
#define SETTING_NOW_DAY_SUN		11

#define ALARM_SET_CHAR (CHAR_TICK)
#define ALARM_UNSET_CHAR ('.')

static prev_menu_s prevMenuData;
static alarm_s alarm; // Data for the alarm we are currently editing

static void mSelect(void);
static void itemLoader(byte);
static void selectAlarm(void);
static display_t alarmsDraw(void);
static void alarmsDown(void);
static void alarmsUp(void);
static byte getMaxValForSetting(void);
static void showAlarmStr(byte, alarm_s*);
static void makeAlarmStr(char*, alarm_s*);

void mAlarmsOpen()
{
	setMenuInfo(OPTION_COUNT, MENU_TYPE_STR, PSTR(STR_ALARMSMENU));
	setMenuFuncs(MENUFUNC_NEXT, MENUFUNC_PREV, mSelect, itemLoader);

	setPrevMenuOpen(&prevMenuData, mAlarmsOpen);

	beginAnimation2(NULL);
}

static void mSelect()
{
	setPrevMenuExit(&prevMenuData);
	doAction(exitSelected());
}

static void itemLoader(byte num)
{
	if(num < ALARM_COUNT)
	{
		alarm_s alarm2;
		if(setting.now == SETTING_NOW_NONE || num != menuData.selected)
			alarm_get(num, &alarm2);
		else
			memcpy(&alarm2, &alarm, sizeof(alarm_s));
		showAlarmStr(num, &alarm2);
	}
	
	addBackOption();
}

static void selectAlarm()
{
	static byte dayBit;
	static bool wasPM;

	setMenuFuncs(alarmsDown, alarmsUp, mSelect, itemLoader);
	menuData.func.draw = alarmsDraw;

	switch(setting.now)
	{
		case SETTING_NOW_NONE:
			alarm_get(menuData.selected, &alarm);
			setting.now = SETTING_NOW_EN;
			setting.val = alarm.enabled;
			break;
		case SETTING_NOW_EN:
			alarm.enabled = setting.val;
			setting.now = SETTING_NOW_HOUR;

			time_s time;
			time.hour = alarm.hour;
			time.ampm = CHAR_24;
			time_timeMode(&time, appConfig.timeMode);

			setting.val = time.hour;
			
			wasPM = (alarm.hour >= 12);

			break;
		case SETTING_NOW_HOUR:
		{
			byte hour = setting.val;
			byte max = appConfig.timeMode == TIMEMODE_12HR ? 12 : 23;
			if(hour > max)
				hour = max;

			if(appConfig.timeMode == TIMEMODE_12HR)
			{
				time_s time;
				time.hour = hour;
				time.ampm = wasPM ? CHAR_PM : CHAR_AM;
				time_timeMode(&time, TIMEMODE_24HR);
				hour = time.hour;
			}

			alarm.hour = hour;

			setting.now = SETTING_NOW_MIN;
			setting.val = alarm.min;
		}
			break;
		case SETTING_NOW_MIN:
			alarm.min = setting.val;
			if(appConfig.timeMode == TIMEMODE_12HR)
			{
				setting.now = SETTING_NOW_AMPM;
				setting.val = wasPM;
			}
			else
			{
				setting.now = SETTING_NOW_DAY_MON;
				setting.val = alarm.mon;
			}
			dayBit = 0;
			break;
		case SETTING_NOW_AMPM:
		{
			time_s time;
			time.hour = alarm.hour;
			time.ampm = setting.val ? CHAR_PM : CHAR_AM;
			time_timeMode(&time, TIMEMODE_24HR);
			alarm.hour = time.hour;
			setting.now = SETTING_NOW_DAY_MON;
			setting.val = alarm.mon;
		}
			break;
		case SETTING_NOW_DAY_MON:
		case SETTING_NOW_DAY_TUE:
		case SETTING_NOW_DAY_WED:
		case SETTING_NOW_DAY_THUR:
		case SETTING_NOW_DAY_FRI:
		case SETTING_NOW_DAY_SAT:
		case SETTING_NOW_DAY_SUN:
			if(setting.val)
				alarm.days |= _BV(dayBit);
			else
				alarm.days &= ~_BV(dayBit);
			dayBit++;
			setting.val = (bool)(alarm.days & _BV(dayBit));
			if(setting.now != SETTING_NOW_DAY_SUN)
				setting.now++;
			else
			{
				alarm_save(menuData.selected, &alarm);
				setting.now = SETTING_NOW_NONE;
				setMenuFuncs(MENUFUNC_NEXT, MENUFUNC_PREV, mSelect, itemLoader);
				menuData.func.draw = NULL;
			}
			break;
		default:
			break;
	}
}

static display_t alarmsDraw()
{
	byte w = 5;
	byte x;
	char buff[4];
	buff[1] = 0x00;
	switch(setting.now)
	{
		case SETTING_NOW_EN:
			x = 7;
			buff[0] = setting.val ? ALARM_SET_CHAR : ALARM_UNSET_CHAR;
			break;
		case SETTING_NOW_HOUR:
			x = 21;
			w = 11;
			break;
		case SETTING_NOW_MIN:
			x = 42;
			w = 11;
			break;
		case SETTING_NOW_AMPM:
			x = 56;
			buff[0] = setting.val ? CHAR_PM : CHAR_AM;
			break;
		case SETTING_NOW_DAY_MON:
		case SETTING_NOW_DAY_TUE:
		case SETTING_NOW_DAY_WED:
		case SETTING_NOW_DAY_THUR:
		case SETTING_NOW_DAY_FRI:
		case SETTING_NOW_DAY_SAT:
		case SETTING_NOW_DAY_SUN:
			{
				byte dow = setting.now - SETTING_NOW_DAY_MON;
				x = 70 + (7 * dow);
				buff[0] = setting.val ? pgm_read_byte(&dowChars[dow]) : '-';
			}
			break;
		default:
			return DISPLAY_DONE;
	}

	byte y = 8 + ((menuData.selected * 8) - (menuData.scroll * 8));
	
	draw_clearArea(x, y, w);
	
	if(setting.now == SETTING_NOW_HOUR || setting.now == SETTING_NOW_MIN)
		sprintf_P(buff, PSTR("%02hhu"), setting.val);

	draw_string(buff, true, x, y);
	
	return DISPLAY_DONE;
}

static void alarmsUp()
{
	setting.val++;
	if(setting.val > getMaxValForSetting())
		setting.val = 0;

	if(setting.now == SETTING_NOW_HOUR && appConfig.timeMode == TIMEMODE_12HR && setting.val == 0)
		setting.val = 1;
}

static void alarmsDown()
{
	setting.val--;
	if(setting.now == SETTING_NOW_HOUR && appConfig.timeMode == TIMEMODE_12HR && setting.val == 0)
		setting.val = 12;

	byte max = getMaxValForSetting();
	if(setting.val > max)
		setting.val = max;
}

static byte getMaxValForSetting()
{
	switch(setting.now)
	{
		case SETTING_NOW_HOUR:
			return appConfig.timeMode == TIMEMODE_12HR ? 12 : 23;
		case SETTING_NOW_MIN:
			return 59;
	}
	return 1;
}

static void showAlarmStr(byte idx, alarm_s* alarm)
{
	char buff[17];
	makeAlarmStr(buff, alarm);
	setMenuOption(idx, buff, NULL, selectAlarm);
}

static void makeAlarmStr(char* buff, alarm_s* alarm)
{
	time_s time;
	time.hour = alarm->hour;
	time.ampm = CHAR_24;
	time_timeMode(&time, appConfig.timeMode);

	sprintf_P(buff + 1, PSTR(" %02hhu:%02hhu%c "), time.hour, alarm->min, time.ampm);

	buff[0] = alarm->enabled ? ALARM_SET_CHAR : ALARM_UNSET_CHAR;
	buff[16] = 0x00;

	LOOP(7, i)
		buff[i + 9] = alarm_dayEnabled(alarm->days, i) ? pgm_read_byte(&dowChars[i]) : '-';	
}
