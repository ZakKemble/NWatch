/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"
#include "devices/ds1307_defs.h"

#if RTC_SRC == RTC_SRC_DS1307

#include "devices/rtc_funcs.h"

static bool userAlarmActive;
static bool systemAlarmActive;

void ds1307_init()
{
	// Set registers

	byte data;

	// Enable oscillator
	read(DS1307_ADDR_SECS, &data, 1);
	if(!(data & _BV(DS1307_BIT_CH)))
	{
		SET_BITS(data, DS1307_BIT_CH);
		write(DS1307_ADDR_SECS, data);
	}

	// 1Hz output
	read(DS1307_ADDR_CTRL, &data, 1);
	CLEAR_BITS(data, DS1307_BIT_RS1, DS1307_BIT_RS0);
	SET_BITS(data, DS1307_BIT_OUT);
	write(DS1307_ADDR_CTRL, data);

	// Set 1Hz output
	rtc_sqw(RTC_SQW_ON);
}

// Switch between 1Hz output and no output
void ds1307_sqw(rtc_sqw_t enable)
{
	byte data;
	read(DS1307_ADDR_CTRL, &data, 1);
	CLEAR_BITS(data, DS1307_BIT_SQWE);
	if(enable == RTC_SQW_ON || userAlarmActive || systemAlarmActive)
		SET_BITS(data, DS1307_BIT_SQWE);
	write(DS1307_ADDR_CTRL, data);
}

// Get time
void ds1307_get(timeDate_s* timeData)
{
	read(DS1307_ADDR_SECS, (byte*)timeData, sizeof(time_s));

	timeData->secs	= bcd2dec(timeData->secs);
	timeData->mins	= bcd2dec(timeData->mins);
	timeData->hour	= bcd2dec(timeData->hour);
//	timeData.day	= bcd2dec(timeData.day); // Don't need to convert to DEC since it only stores 0 - 6
	timeData->date	= bcd2dec(timeData->date);
	timeData->month	= bcd2dec(timeData->month);
	timeData->year	= bcd2dec(timeData->year);

	// Month and day start at 1, but we want to start at 0
	if(timeData->day > 0)
		timeData->day--;

	if(timeData->month > 0)
		timeData->month--;
}

// Save time
void ds1307_save(timeDate_s* timeData)
{
	write(DS1307_ADDR_SECS,	dec2bcd(timeData->secs));
	write(DS1307_ADDR_MINS,	dec2bcd(timeData->mins));
	write(DS1307_ADDR_HRS,	dec2bcd(timeData->hour));
	write(DS1307_ADDR_DAY,	timeData->day + 1); // Don't need to convert to BCD since it only stores 0 - 6, Day is also stored starting at 0 in program, but RTC starts at 1
	write(DS1307_ADDR_DATE,	dec2bcd(timeData->date));
	write(DS1307_ADDR_MONTH,	dec2bcd(timeData->month + 1));
	write(DS1307_ADDR_YEAR,	dec2bcd(timeData->year));
}

// Update temperature
void ds1307_tempUpdate()
{
}

// Get temperature
void ds1307_tempGet(rtc_temperature_s* temp)
{
	temp->whole = 0;
	temp->frac = 0;
}

// User alarm uses alarm 1
void ds1307_setUserAlarmWake(alarm_s* alarm)
{
	// Clear flag
	rtc_userAlarmState();

	userAlarmActive = (alarm != NULL);
}

// System wakeup uses alarm 2
// NOTE: Alarm 2 doesn't have seconds
void ds1307_setSystemAlarmWake(alarm_s* alarm)
{
	// Clear flag
	rtc_systemAlarmState();

	systemAlarmActive = (alarm != NULL);
}

// Get user alarm state
bool ds1307_userAlarmState()
{
	return false;
}

// Get system alarm state
bool ds1307_systemAlarmState()
{
	return false;
}

#endif
