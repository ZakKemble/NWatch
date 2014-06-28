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
#define SETTING_NOW_10HOUR		2
#define SETTING_NOW_1HOUR		3
#define SETTING_NOW_10MIN		4
#define SETTING_NOW_1MIN		5
#define SETTING_NOW_AMPM		6
#define SETTING_NOW_DAY_MON		7
#define SETTING_NOW_DAY_TUE		8
#define SETTING_NOW_DAY_WED		9
#define SETTING_NOW_DAY_THUR	10
#define SETTING_NOW_DAY_FRI		11
#define SETTING_NOW_DAY_SAT		12
#define SETTING_NOW_DAY_SUN		13

#define ALARM_SET_CHAR (CHAR_TICK)
#define ALARM_UNSET_CHAR ('.')

static prev_menu_s prevMenuData;
static alarm_s alarm;

static void mSelect(void);
static void itemLoader(byte);
static void selectAlarm(void);
static display_t alarmsDraw(void);
static void alarmsDown(void);
static void alarmsUp(void);
static void mode12hrAmPm(void);
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
			setting.now = SETTING_NOW_10HOUR;
			setting.val = div10(alarm.hour);
			break;
		case SETTING_NOW_10HOUR:
			do10sStuff(&alarm.hour, SETTING_NOW_1HOUR);
			break;
		case SETTING_NOW_1HOUR:
			do1sStuff(&alarm.hour, !appConfig.mode12hr ? 23 : 12, SETTING_NOW_10MIN, div10(alarm.min));
			break;
		case SETTING_NOW_10MIN:
			do10sStuff(&alarm.min, SETTING_NOW_1MIN);
			break;
		case SETTING_NOW_1MIN:
			do1sStuff(&alarm.min, 59, !appConfig.mode12hr ? SETTING_NOW_DAY_MON : SETTING_NOW_AMPM, alarm.mon);
			dayBit = 0;
			break;
		case SETTING_NOW_AMPM:
			setting.now = SETTING_NOW_DAY_MON;
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
		case SETTING_NOW_1HOUR:
		case SETTING_NOW_10MIN:
		case SETTING_NOW_1MIN:
			{
				x = 21 + (7 * (setting.now - SETTING_NOW_10HOUR));
				if(setting.now > SETTING_NOW_1HOUR)
					x += 7;

				buff[0] = setting.val + 48;
				/*if(!appConfig.mode12hr || alarm.hour != 0 || setting.val != 0)
					buff[0] = setting.val + 48;
				else if(setting.now == SETTING_NOW_10HOUR)
					buff[0] = '1';
				else if(setting.now == SETTING_NOW_1HOUR)
					buff[0] = '2';*/
			}
			break;
		case SETTING_NOW_AMPM:
			x = 56;
			byte hour = alarm.hour;
			buff[0] = time_hourAmPm(&hour);
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
	
	draw_clearArea(x, y, 5);
	draw_string(buff, true, x, y);
	
	return DISPLAY_DONE;
}

static void alarmsUp()
{
	if(setting.now != SETTING_NOW_AMPM)
	{
		setting.val++;
		if(setting.val > getMaxValForSetting())
			setting.val = 0;
	}
	else
		mode12hrAmPm();
}

static void alarmsDown()
{
	if(setting.now != SETTING_NOW_AMPM)
	{
		setting.val--;
		byte max = getMaxValForSetting();
		if(setting.val > max)
			setting.val = max;
	}
	else
		mode12hrAmPm();
}

static void mode12hrAmPm()
{
	if(alarm.hour < 12)
		alarm.hour += 12;
	else
		alarm.hour -= 12;
}

static byte getMaxValForSetting()
{
	switch(setting.now)
	{
		case SETTING_NOW_10HOUR:
		{
			if(!appConfig.mode12hr)
				return 2;
			else
				return 1;
		}
		case SETTING_NOW_1HOUR:
		case SETTING_NOW_1MIN:
			return 9;
		case SETTING_NOW_10MIN:
			return 5;
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
	byte hour = alarm->hour;
	char ampm = time_hourAmPm(&hour);

	sprintf_P(buff + 1, PSTR(" %02hhu:%02hhu%c "), hour, alarm->min, ampm);

	buff[0] = alarm->enabled ? ALARM_SET_CHAR : ALARM_UNSET_CHAR;
	buff[16] = 0x00;

	LOOP(7, i)
		buff[i + 9] = alarm_dayEnabled(alarm->days, i) ? pgm_read_byte(&dowChars[i]) : '-';	
}
