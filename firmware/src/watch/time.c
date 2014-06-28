/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/interrupt.h>
#include <avr/io.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <string.h>
#include <stdio.h>
#include "common.h"
#include "time.h"
#include "devices/ds3231.h"
#include "devices/buzzer.h"
#include "alarm.h"
#include "global.h"
#include "pwrmgr.h"
#include "watchconfig.h"

#define RTC_INT_P	D2

#define unitsOnly(data)		(0x0F & data)
#define tens2Dec(data)		(data>>4)

typedef enum
{
	BEEP_0,
	BEEP_1,
	BEEP_2,
	BEEP_3
} beep_state_t;

s_time timeData;
static volatile bool update;
static bool halfSecond;

static void hourBeep(void);
static byte bcd2dec(byte);
static byte dec2bcd(byte);

void time_init()
{
/*
	delay(1000);

	TIMSK2 &= ~((1<<OCIE2A)|(1<<OCIE2B)|(1<<TOIE2));
	ASSR |= (1<<AS2);
	TCNT2 = 0x00;
	TCCR2B = (1<<CS22)|(1<<CS20);
	while(ASSR & 0x07);
	TIFR2 = 0;
	TIMSK2 |= (1<<TOIE2);
*/

	pinPullup(RTC_INT_P, PULLUP_ENABLE);
	EICRA |= _BV(ISC00);
	EIMSK |= _BV(INT0);

	time_wake();
}

void time_sleep()
{
//	TCCR2B = (1<<CS22)|(1<<CS20);
//	while(ASSR & 0x07);

	// Turn off square wave
	ds3231_sqw(DS3231_SQW_OFF);

	// Set next alarm
	s_alarm* nextAlarm = alarm_getNext();
	if(nextAlarm != NULL)
	{
		s_alarm alarm;
		alarm.min = dec2bcd(nextAlarm->min);
		alarm.hour = dec2bcd(nextAlarm->hour);
		alarm.days = timeData.day;
		ds3231_setUserAlarmWake(&alarm);
	}
	else
		ds3231_setUserAlarmWake(NULL);

	// 
	if(watchConfig.volHour)
	{
		s_alarm alarm;
		alarm.min = 0;
		ds3231_setSystemAlarmWake(&alarm);
	}
	else // Hour beep volume set to minimum, so don't bother with the system alarm
		ds3231_setSystemAlarmWake(NULL);

	update = false;
}

rtcwake_t time_wake()
{
	// Get time data
	ds3231_get(&timeData);

	// Convert to decimal
	timeData.secs	= bcd2dec(timeData.secs);
	timeData.mins	= bcd2dec(timeData.mins);
	timeData.hours	= bcd2dec(timeData.hours);
//	timeData.day	= bcd2dec(timeData.day); // Don't need to convert to DEC since it only stores 0 - 6
	timeData.date	= bcd2dec(timeData.date);
	timeData.month	= bcd2dec(timeData.month);
	timeData.year	= bcd2dec(timeData.year);

	// Turn on square wave
	ds3231_sqw(DS3231_SQW_ON);

	update = false;

	// Check alarms
	bool userAlarm = ds3231_userAlarmState();
	bool systemAlarm = ds3231_systemAlarmState();

	if(userAlarm && systemAlarm)
		return RTCWAKE_USER_SYSTEM;
	else if(userAlarm)
		return RTCWAKE_USER;
	else if(systemAlarm)
		return RTCWAKE_SYSTEM;

	return RTCWAKE_NONE;
}

bool time_halfSecond()
{
	return halfSecond;
}

void time_set(s_time* timeDataSet)
{
//	TCNT2 = 0x00;

	halfSecond = false;
	timeDataSet->secs = 0;
	memcpy(&timeData, timeDataSet, sizeof(s_time));

	// Convert to BCD
	s_time tmp;
	tmp.secs	= 0;
	tmp.mins	= dec2bcd(timeDataSet->mins);
	tmp.hours	= dec2bcd(timeDataSet->hours);
	tmp.day		= timeDataSet->day; // Don't need to convert to BCD since it only stores 0 - 6
	tmp.date	= dec2bcd(timeDataSet->date);
	tmp.month	= dec2bcd(timeDataSet->month);
	tmp.year	= dec2bcd(timeDataSet->year);

	ds3231_save(&tmp);

	alarm_updateNextAlarm();
}

bool time_isLeapYear(byte year)
{
	uint fullYear = year + 2000;
	return ((fullYear & 3) == 0 && ((fullYear % 25) != 0 || (fullYear & 15) == 0));
}

byte time_dow(int y, byte m, byte d)
{
	static byte t[] = {0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4};
	y -= m < 3;
	byte dow = (y + y/4 - y/100 + y/400 + t[m-1] + d) % 7;

	// 0 = Sunday, 1 = Monday, but Monday should be 0
	dow--;
	if(dow == 255) // Overflowed, must have been 0 which is Sunday
		dow = 6;
	return dow;
}

bool time_update()
{
	hourBeep();

	if(!update)
		return false;

	update = false;
	halfSecond = RTC_INT();
	if(!halfSecond)
		return false;

	// Slightly modified code from AVR134
	if(++timeData.secs == 60)
	{
		timeData.secs = 0;
		if(++timeData.mins == 60)
		{
			timeData.mins = 0;
			if(++timeData.hours == 24)
			{
				timeData.hours = 0;
				if (++timeData.date == 32)
				{
					timeData.month++;
					timeData.date = 1;
				}
				else if (timeData.date == 31)
				{
					if (timeData.month == 3 || timeData.month == 5 || timeData.month == 8 || timeData.month == 10)
					{
						timeData.month++;
						timeData.date = 1;
					}
				}
				else if (timeData.date == 30)
				{
					if(timeData.month == 1)
					{
						timeData.month++;
						timeData.date = 1;
					}
				}
				else if (timeData.date == 29)
				{
					if(timeData.month == 1 && !time_isLeapYear(timeData.year))
					{
						timeData.month++;
						timeData.date = 1;
					}
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
		}
	}

	//printf_P(PSTR("%02hhu:%02hhu:%02hhu\n"), timeData.hours, timeData.mins, timeData.secs);
	
	//printf("T: %hhuC\n", ds3231_temp());

	return true;
}

static void hourBeep()
{
	static beep_state_t beep;
	static byte beepHour;

	if((timeData.mins == 0 && timeData.secs == 0) || beep != BEEP_0)
	{
		switch(beep)
		{
			case BEEP_0:
				if(beepHour != timeData.hours)
				{
					beepHour = timeData.hours;
					pwrmgr_setState(PWR_ACTIVE_HOURBEEP, PWR_STATE_IDLE);
					buzzer_buzz(100, TONE_2_5KHZ, VOL_HOUR);
					beep = BEEP_1;
				}
				break;
			case BEEP_1:
				if(!buzzer_buzzing())
				{
					buzzer_buzz(100, TONE_3_5KHZ, VOL_HOUR);
					beep = BEEP_2;
				}
				break;
			case BEEP_2:
				if(!buzzer_buzzing())
				{
					pwrmgr_setState(PWR_ACTIVE_HOURBEEP, PWR_STATE_NONE);
					beep = BEEP_0;
				}
				break;
			default:
				break;
		}
	}
}

static byte bcd2dec(byte bcd)
{
	return ((tens2Dec(bcd) * 10) + unitsOnly(bcd));
}

static byte dec2bcd(byte dec)
{
	return (((dec / 10) << 4) + (dec % 10));
}

/*
ISR(TIMER2_OVF_vect)
{
	update = true;
}
*/

ISR(INT0_vect)
{
	// update only when going low
	update = true;
}