/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define FEB_LEAP_YEAR	29
static const byte monthDayCount[] PROGMEM = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

time_s timeData;
static volatile bool update;

static void getRtcTime(void);

void time_init()
{
	// RTC square wave/alarm
	pinPullup(RTC_INT_P, PU_EN);

#if RTC_SRC != RTC_SRC_INTERNAL
	EICRA |= _BV(ISC01);
	EIMSK |= _BV(INT0);
#endif

	time_wake();
}

void time_sleep()
{
//	TCCR2B = _BV(CS22)|_BV(CS20);
//	while(ASSR & (_BV(OCR2BUB)|_BV(TCR2AUB)|_BV(TCR2BUB)));

#if RTC_SRC != RTC_SRC_INTERNAL
	// Turn off square wave
	rtc_sqw(RTC_SQW_OFF);

	alarm_s alarm;

	// Set next alarm
	if(alarm_getNext(&alarm))
	{
		alarm.days = alarm_getNextDay() + 1;
		rtc_setUserAlarmWake(&alarm);
	}
	else // No next alarm
		rtc_setUserAlarmWake(NULL);

	// Set up hour beeps
	if(appConfig.volHour)
	{
		alarm.min = 0;
		alarm.hour = 0;
		alarm.days = 0;
		rtc_setSystemAlarmWake(&alarm);
	}
	else // Hour beep volume set to minimum, so don't bother with the system alarm
		rtc_setSystemAlarmWake(NULL);
#endif

	update = false;
}

void time_shutdown()
{
#if RTC_SRC != RTC_SRC_INTERNAL
	rtc_sqw(RTC_SQW_OFF);
	rtc_setUserAlarmWake(NULL);
	rtc_setSystemAlarmWake(NULL);
#endif

	update = false;
}

rtcwake_t time_wake()
{
#if RTC_SRC != RTC_SRC_INTERNAL
	getRtcTime();

	// Turn on square wave
	rtc_sqw(RTC_SQW_ON);

//	update = false;

	// Check alarms
	bool userAlarm = rtc_userAlarmState();
	bool systemAlarm = rtc_systemAlarmState();

	if(userAlarm && systemAlarm)
		return RTCWAKE_USER_SYSTEM;
	else if(userAlarm)
		return RTCWAKE_USER;
	else if(systemAlarm)
		return RTCWAKE_SYSTEM;
#endif
	return RTCWAKE_NONE;
}

void time_set(time_s* newTimeData)
{
//	TCNT2 = 0x00;

	newTimeData->secs = 0;
	memcpy(&timeData, newTimeData, sizeof(time_s));

#if RTC_SRC != RTC_SRC_INTERNAL
	rtc_save(newTimeData);
#endif

	alarm_updateNextAlarm();
}

bool time_isLeapYear(byte year)
{
// Watch only supports years 2000 - 2099, so no need to do the full calculation

	return (year % 4 == 0);

	//uint fullYear = year + 2000;
	//return ((fullYear & 3) == 0 && ((fullYear % 25) != 0 || (fullYear & 15) == 0));
}

// Workout day of week from year, month and date
// http://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week
byte time_dow(byte yy, month_t m, byte d)
{
	//static byte t[] = {0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4};
	//y -= m < 3;
	//byte dow = (y + y/4 - y/100 + y/400 + t[m-1] + d) % 7;

	m++;
	int y = yy + 2000;
	byte dow = (d+=m<3?y--:y-2,23*m/9+d+4+y/4-y/100+y/400)%7 ;

	// 0 = Sunday, 1 = Monday, but Monday should be 0
	dow--;
	if(dow == 255) // Overflowed, must have been 0 which is Sunday
		dow = 6;
	return dow;
}

byte time_monthDayCount(month_t month, byte year)
{
	byte numDays = pgm_read_byte(&monthDayCount[month]);
	if(month == MONTH_FEB && time_isLeapYear(year))
		numDays = FEB_LEAP_YEAR;
	return numDays;
}

char time_hourAmPm(byte* hour)
{
	if(!appConfig.mode12hr)
		return CHAR_24;

	if(*hour >= 12)
	{
		*hour -= 12;
		return CHAR_PM;
	}
	else if(*hour == 0)
		*hour = 12;
	return CHAR_AM;
}

void time_update()
{
	if(!update)
		return;
	update = false;

#if RTC_SRC != RTC_SRC_INTERNAL
	getRtcTime();

	if(timeData.secs == 0 && timeData.mins == 0)
		tune_play(tuneHour, VOL_HOUR, PRIO_HOUR);
#else
	// Slightly modified code from AVR134
	if(++timeData.secs == 60)
	{
		timeData.secs = 0;
		if(++timeData.mins == 60)
		{
			timeData.mins = 0;
			if(++timeData.hour == 24)
			{
				byte numDays = time_monthDayCount(timeData.month, timeData.year);

				timeData.hour = 0;
				if (++timeData.date == numDays + 1)
				{
					timeData.month++;
					timeData.date = 1;
				}

				if (timeData.month == 13)
				{
					timeData.month = 1;
					timeData.year++;
					if(timeData.year == 100)
						timeData.year = 0;
				}

				if(++timeData.day == 7)
					timeData.day = 0;
			}

			tune_play(tuneHour, VOL_HOUR, PRIO_HOUR);
		}
	}
#endif

	debug_printf("%02hhu:%02hhu:%02hhu\n", timeData.hour, timeData.mins, timeData.secs);
	//debug_printf("T: %hhuC\n",rtc_temp());
}

static void getRtcTime()
{
	rtc_get(&timeData);

//#warning "remove"
//	timeData.day = 3;
//	timeData.date = 7;
//	timeData.month = 0;
//	timeData.year = 15;
}

#if RTC_SRC == RTC_SRC_INTERNAL
ISR(TIMER2_OVF_vect)
#else
ISR(INT0_vect)
#endif
{
	update = true;
}
