/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

static byte nextAlarm;
static byte nextAlarmDay;
static bool alarmSetOff;
static draw_f oldDrawFunc;
static button_f oldBtn1Func;
static button_f oldBtn2Func;
static button_f oldBtn3Func;

static alarm_s eepAlarms[ALARM_COUNT] EEMEM; // = {{22,45,0},{01,48,4},{7,45,63},{9,4,0},{3,1,7}};

static bool goingOff(void);
static void getNextAlarm(void);
static uint toMinutes(byte, byte, byte);
static bool stopAlarm(void);
static display_t draw(void);

void alarm_init()
{
	getNextAlarm();
}

void alarm_reset()
{
	// Set bytes individually, uses less flash space
	LOOPR(ALARM_COUNT * sizeof(alarm_s), i)
		eeprom_update_byte(((byte*)eepAlarms) + i, 0);

	//alarm_s alarm;
	//memset(&alarm, 0, sizeof(alarm_s));
	//LOOPR(ALARM_COUNT, i)
	//	eeprom_update_block(&alarm, &eepAlarms[i], sizeof(alarm_s));
}

void alarm_get(byte num, alarm_s* alarm)
{
	eeprom_read_block(alarm, &eepAlarms[num], sizeof(alarm_s));
//	if(alarm->hour > 23)
//		memset(alarm, 0, sizeof(alarm_s));
}

bool alarm_getNext(alarm_s* alarm)
{
	if(nextAlarm == UCHAR_MAX)
		return false;
	alarm_get(nextAlarm, alarm);
	return true;
}

byte alarm_getNextDay()
{
	return nextAlarmDay;
}

void alarm_save(byte num, alarm_s* alarm)
{
	eeprom_update_block(alarm, &eepAlarms[num], sizeof(alarm_s));
	getNextAlarm();
}

void alarm_update()
{
	bool wasGoingOff = alarmSetOff;
	bool alarmNow = goingOff();
	if(alarmNow && alarmSetOff)
	{
		if(wasGoingOff != alarmSetOff)
		{
			oldDrawFunc = display_setDrawFunc(draw);
			oldBtn1Func = buttons_setFunc(BTN_1, NULL);
			oldBtn2Func = buttons_setFunc(BTN_2, stopAlarm);
			oldBtn3Func = buttons_setFunc(BTN_3, NULL);
			pwrmgr_setState(PWR_ACTIVE_ALARM, PWR_STATE_IDLE);
			tune_play(tuneAlarm, VOL_ALARM, PRIO_ALARM);
		}

		if(!led_flashing())
		{
			static led_t ledFlash = LED_GREEN;
			ledFlash = (ledFlash == LED_GREEN) ? LED_RED : LED_GREEN;
			led_flash(ledFlash, 150, 255);
		}
	}
	else if(!alarmNow && alarmSetOff)
		stopAlarm();
}

void alarm_updateNextAlarm()
{
	getNextAlarm();
}

static bool goingOff()
{
	alarm_s nextAlarm;

	if(alarm_getNext(&nextAlarm) && alarm_dayEnabled(nextAlarm.days, timeData.day) && nextAlarm.hour == timeData.hour && nextAlarm.min == timeData.mins)
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

// This func needs to be ran when an alarm has changed, time has changed and an alarm has gone off
static void getNextAlarm()
{
	byte next = UCHAR_MAX;
	uint nextTime = UINT_MAX;

	// Now in minutes from start of week
	uint now = toMinutes(timeData.hour, timeData.mins + 1, timeData.day);

	// Loop through alarms
	LOOPR(ALARM_COUNT, i)
	{
		alarm_s alarm;
		alarm_get(i, &alarm);

		if(!alarm.enabled)
			continue;

		// Loop through days
		LOOPR(7, d)
		{
			// Day not enabled
			if(!alarm_dayEnabled(alarm.days, d))
				continue;

			// Alarm time in minutes from start of week
			uint alarmTime = toMinutes(alarm.hour, alarm.min, d);

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
				next = i;
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

static bool stopAlarm()
{
	display_setDrawFunc(oldDrawFunc);
	buttons_setFuncs(oldBtn1Func, oldBtn2Func, oldBtn3Func);
	oled_setInvert(appConfig.invert);
	pwrmgr_setState(PWR_ACTIVE_ALARM, PWR_STATE_NONE);
	tune_stop(PRIO_ALARM);
	alarmSetOff = false;
	return true;
}

static display_t draw()
{
	if((millis8_t)millis() < 128)
	{
		byte fix = 16;
		image_s img = newImage(16, fix, menu_alarm, 32, 32, WHITE, NOINVERT, 0);
		draw_bitmap_set(&img);
		draw_bitmap_s2(&img);
	}

	// Draw time
	byte hour = timeData.hour;
	char ampm = time_hourAmPm(&hour);
	char buff[7];
	sprintf_P(buff, PSTR(TIME_FORMAT_SMALL), hour, timeData.mins, ampm);
	draw_string(buff,NOINVERT,79,20);

	// Draw day
	strcpy_P(buff, days[timeData.day]);
	draw_string(buff,false,86,36);

	return DISPLAY_DONE;
}