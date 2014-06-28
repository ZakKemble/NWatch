/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/pgmspace.h>
#include <avr/eeprom.h>
#include <limits.h>
#include <stdio.h>
#include "common.h"
#include "alarm.h"
#include "devices/buzzer.h"
#include "devices/led.h"
#include "time.h"
#include "draw.h"
#include "resources.h"
#include "devices/buttons.h"
#include "devices/oled.h"
#include "display.h"
#include "watchconfig.h"
#include "pwrmgr.h"

static s_alarm alarms[ALARM_COUNT];
static s_alarm* nextAlarm;
static byte nextAlarmDay;
static bool alarmSetOff;
static draw_f oldDrawFunc;
static button_f oldSelectFunc;
static button_f oldDownFunc;
static button_f oldUpFunc;

static const s_alarm eepAlarms[ALARM_COUNT] EEMEM = {};

static void load(void);
static void save(void);
static bool goingOff(void);
static void getNextAlarm(void);
static uint toMinutes(byte, byte, byte);
static bool select(void);
static display_t draw(void);

void alarm_init()
{
	load();

	getNextAlarm();
}

s_alarm* alarm_get()
{
	return alarms;
}

s_alarm* alarm_getNext()
{
	return nextAlarm;
}

byte alarm_getNextDay()
{
	return nextAlarmDay;
}

char alarm_getDayLetter(byte day)
{
	static byte days[] = {'M','T','W','T','F','S','S'};
	return days[day];
}

void alarm_save()
{
	save();
}

void alarm_update()
{
	static bool buzzHigh = false;

	bool wasGoingOff = alarmSetOff;
	if(goingOff() && alarmSetOff)
	{
		if(wasGoingOff != alarmSetOff)
		{
			oldDrawFunc = display_setDrawFunc(draw);
			oldSelectFunc = buttons_setFunc(BTN_SELECT, select);
			oldDownFunc = buttons_setFunc(BTN_DOWN, NULL);
			oldUpFunc = buttons_setFunc(BTN_UP, NULL);
			pwrmgr_setState(PWR_ACTIVE_ALARM, PWR_STATE_IDLE);
		}

		if(!buzzer_buzzing())
		{
			if(buzzHigh)
			{
				buzzer_buzz(200, TONE_5KHZ, VOL_ALARM);
				led_flash(LED_GREEN, 150, 255);
				oled_setInvert(true);
			}
			else
			{
				buzzer_buzz(200, TONE_3KHZ, VOL_ALARM);
				led_flash(LED_RED, 150, 255);
				oled_setInvert(false);
			}			
			buzzHigh = !buzzHigh;
		}
	}
}

void alarm_updateNextAlarm()
{
	getNextAlarm();
}

static bool goingOff()
{
	if(nextAlarm != NULL && alarmDayEnabled(nextAlarm->days, timeData.day) && nextAlarm->hour == timeData.hours && nextAlarm->min == timeData.mins)
	{
		if(timeData.secs == 0)
		{
			alarmSetOff = true;
			getNextAlarm();
		}
		return true;
	}
	return false;
}

static void load()
{
	eeprom_read_block(alarms, eepAlarms, sizeof(s_alarm) * ALARM_COUNT);
}

static void save()
{
	eeprom_update_block(alarms, (s_alarm*)eepAlarms, sizeof(s_alarm) * ALARM_COUNT);
	getNextAlarm();
}

// This func needs to be ran when an alarm has changed, time has changed and an alarm has gone off
static void getNextAlarm()
{
	s_alarm* next = NULL;
	uint nextTime = UINT_MAX;

	// Now in minutes from start of week
	uint now = toMinutes(timeData.hours, timeData.mins + 1, timeData.day);

	// Loop through alarms
	LOOPR(ALARM_COUNT, i)
	{
		// Not enabled
		if(!alarms[i].enabled)
			continue;

		// Loop through days
		LOOPR(7, d)
		{
			// Day not enabled
			if(!alarmDayEnabled(alarms[i].days, d))
				continue;

			// Alarm time in minutes from start of weeek
			uint alarmTime = toMinutes(alarms[i].hour, alarms[i].min, d);

			// Minutes to alarm
			int timeTo = alarmTime - now;

			// Negative result, must mean alarm time is earlier in the week than now, add a weeks time
			if(timeTo < 0)
				timeTo += ((6*1440) + (23*60) + 59); // 10079

			// Is minutes to alarm less than the last minutes to alarm?
			if((uint)timeTo < nextTime)
			{
				// This is our next alarm
				nextTime = timeTo;
				next = &alarms[i];
				nextAlarmDay = d;
			}
		}
	}

	// Set next alarm
	nextAlarm = next;
}

static uint toMinutes(byte hours, byte mins, byte dow)
{
	uint total = mins;
	total += hours * 60;
	total += dow * 1440;
	return total;
}

static bool select()
{
	display_setDrawFunc(oldDrawFunc);
	buttons_setFunc(BTN_SELECT, oldSelectFunc);
	buttons_setFunc(BTN_DOWN, oldDownFunc);
	buttons_setFunc(BTN_UP, oldUpFunc);
	oled_setInvert(watchConfig.invert);
	pwrmgr_setState(PWR_ACTIVE_ALARM, PWR_STATE_NONE);
	alarmSetOff = false;
	return true;
}

static display_t draw()
{
	if((millis8_t)millis() < 128)
	{
		s_image a = {16, 16, menu_alarm, 32, 32, WHITE, NOINVERT, 0};
		draw_bitmap_s2(&a);
	}

	// Draw time
	char buff[6];
	sprintf_P(buff, PSTR(TIME_FORMAT_SMALL), timeData.hours, timeData.mins);
	draw_string(buff,NOINVERT,79,20);

	// Draw day
	strcpy_P(buff, days[timeData.day]);
	draw_string(buff,false,86,36);

	return DISPLAY_DONE;
}