/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"
#include "devices/ds3231_defs.h"

#if RTC_SRC == RTC_SRC_DS3231

#include "devices/rtc_funcs.h"

static rtc_temperature_s temperature;

void ds3231_init()
{
	// Set registers

	byte data;

	// Control
	// Enable oscillator
	read(DS3231_ADDR_CTRL, &data, 1);
	CLEAR_BITS(data, DS3231_BIT_EOSC, DS3231_BIT_RS1, DS3231_BIT_RS2);
	write(DS3231_ADDR_CTRL, data);

	// Status
	// Turn off 32KHz output
	// Unset alarm 1 & 2 interrupts
	read(DS3231_ADDR_STATUS, &data, 1);
	CLEAR_BITS(data, DS3231_BIT_EN32KHZ, DS3231_BIT_A2F, DS3231_BIT_A1F);
	write(DS3231_ADDR_STATUS, data);

	// Set 1Hz output
	rtc_sqw(RTC_SQW_ON);
}

// Switch between 1Hz output and alarm interrupt output
void ds3231_sqw(rtc_sqw_t enable)
{
	byte data;
	read(DS3231_ADDR_CTRL, &data, 1);
	CLEAR_BITS(data, DS3231_BIT_1HZ, DS3231_BIT_INTCN);
	data |= (enable == RTC_SQW_ON) ? _BV(DS3231_BIT_1HZ) : _BV(DS3231_BIT_INTCN);
	write(DS3231_ADDR_CTRL, data);
}

// Get time
void ds3231_get(time_s* timeData)
{
	read(DS3231_ADDR_SECS, (byte*)timeData, sizeof(time_s));

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
/*
	// Can't subtract 1 if month is BCD 10, have to do it manually
	byte month = timeData->month;
	if(month > 0)
	{
		if(month != 0b00010000)
			month--;
		else
			month = 0b00001001;
		timeData->month = month;
	}*/
}

// Save time
void ds3231_save(time_s* timeData)
{
	// Month is stored starting at 0 in program, but RTC starts at 1
//	byte month = timeData->month + 1;
//	if(month == 0b00001010) // invalid BCD, added 1 to 9 = 10 = bad
//		month = 0b00010000; // add 6 to fix, but that increases program size, so just set manually

	write(DS3231_ADDR_SECS,	dec2bcd(timeData->secs));
	write(DS3231_ADDR_MINS,	dec2bcd(timeData->mins));
	write(DS3231_ADDR_HRS,	dec2bcd(timeData->hour));
	write(DS3231_ADDR_DAY,	timeData->day + 1); // Don't need to convert to BCD since it only stores 0 - 6, Day is also stored starting at 0 in program, but RTC starts at 1
	write(DS3231_ADDR_DATE,	dec2bcd(timeData->date));
	write(DS3231_ADDR_MONTH,	dec2bcd(timeData->month + 1));
	write(DS3231_ADDR_YEAR,	dec2bcd(timeData->year));
}

// Update temperature
void ds3231_tempUpdate()
{
	read(DS3231_ADDR_TEMPH, &temperature, sizeof(rtc_temperature_s));
}

// Get temperature
void ds3231_tempGet(rtc_temperature_s* temp)
{
	memcpy(temp, &temperature, sizeof(rtc_temperature_s));
}

// User alarm uses alarm 1
// Will trigger when day, hours, minutes, and seconds match
void ds3231_setUserAlarmWake(alarm_s* alarm)
{
	// Clear flag
	rtc_userAlarmState();

	byte data;
	read(DS3231_ADDR_CTRL, &data, 1);
	if(alarm != NULL)
	{
		write(DS3231_ADDR_ALARM1_SECS,	0);
		write(DS3231_ADDR_ALARM1_MINS,	dec2bcd(alarm->min));
		write(DS3231_ADDR_ALARM1_HRS,	dec2bcd(alarm->hour));
		write(DS3231_ADDR_ALARM1_DAYDATE, 0b01000000 | alarm->days);
		SET_BITS(data, DS3231_BIT_A1IE);
	}
	else // Alarm disabled
		CLEAR_BITS(data, DS3231_BIT_A1IE);
	write(DS3231_ADDR_CTRL, data);
}

// System wakeup uses alarm 2
// NOTE: Alarm 2 doesn't have seconds
// Will trigger when minutes match
void ds3231_setSystemAlarmWake(alarm_s* alarm)
{
	// Clear flag
	rtc_systemAlarmState();

	byte data;
	read(DS3231_ADDR_CTRL, &data, 1);
	if(alarm != NULL)
	{
		write(DS3231_ADDR_ALARM2_MINS,	dec2bcd(alarm->min));
		write(DS3231_ADDR_ALARM2_HRS,	0b10000000 | dec2bcd(alarm->hour));
		write(DS3231_ADDR_ALARM2_DAYDATE,0b10000000 | dec2bcd(alarm->days));
		SET_BITS(data, DS3231_BIT_A2IE);
	}
	else // Alarm disabled
		CLEAR_BITS(data, DS3231_BIT_A2IE);
	write(DS3231_ADDR_CTRL, data);
}

// Get user alarm state
bool ds3231_userAlarmState()
{
	byte data;
	read(DS3231_ADDR_STATUS, &data, 1);
	bool state = data & _BV(DS3231_BIT_A1F);
	if(state) // Clear state if its set
	{
		CLEAR_BITS(data, DS3231_BIT_A1F);
		write(DS3231_ADDR_STATUS, data);
	}

	return state;
}

// Get system alarm state
bool ds3231_systemAlarmState()
{
	byte data;
	read(DS3231_ADDR_STATUS, &data, 1);
	bool state = data & _BV(DS3231_BIT_A2F);
	if(state) // Clear state if its set
	{
		CLEAR_BITS(data, DS3231_BIT_A2F);
		write(DS3231_ADDR_STATUS, data);
	}

	return state;
}

#endif