/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// MCP7940M - Basic
// MCP7940N - Battery backup + Time stamp for when power went and came back
// MCP79400/1/2 - Battery backup + Time stamp for when power went and came back + Unique ID

#include "common.h"
#include "devices/mcp7940x_defs.h"

#if RTC_SRC == RTC_SRC_MCP7940X

#include "devices/rtc_funcs.h"

void mcp7940x_init()
{
	// Make sure oscillator is enabled
	byte data;
	read(MCP7940X_ADDR_SECS, &data, 1);
	if(!(data & _BV(MCP7940X_BIT_ST)))
	{
		data |= _BV(MCP7940X_BIT_ST);
		write(MCP7940X_ADDR_SECS, data);
	}

	// Set 1Hz output
	rtc_sqw(RTC_SQW_ON);
}

// Enable/disable 1Hz output
void mcp7940x_sqw(rtc_sqw_t enable)
{
	byte data;
	read(MCP7940X_ADDR_CTRL, &data, 1);
	CLEAR_BITS(data, MCP7940X_BIT_SQWE);
	if(enable == RTC_SQW_ON)
		data |= _BV(MCP7940X_BIT_SQWE);
	write(MCP7940X_ADDR_CTRL, data);
}

// Get time
void mcp7940x_get(timeDate_s* timeData)
{
	read(MCP7940X_ADDR_SECS, (byte*)timeData, sizeof(time_s));

	timeData->secs &= 0b01111111; // Mask out the oscillator enable bit

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
void mcp7940x_save(timeDate_s* timeData)
{
	write(MCP7940X_ADDR_SECS,	dec2bcd(timeData->secs | _BV(MCP7940X_BIT_ST))); // Make sure ST bit is set
	write(MCP7940X_ADDR_MINS,	dec2bcd(timeData->mins));
	write(MCP7940X_ADDR_HRS,	dec2bcd(timeData->hour));
	write(MCP7940X_ADDR_DAY,	timeData->day + 1); // Don't need to convert to BCD since it only stores 0 - 6, Day is also stored starting at 0 in program, but RTC starts at 1
	write(MCP7940X_ADDR_DATE,	dec2bcd(timeData->date));
	write(MCP7940X_ADDR_MONTH,	dec2bcd(timeData->month + 1));
	write(MCP7940X_ADDR_YEAR,	dec2bcd(timeData->year));
}

// Update temperature
void mcp7940x_tempUpdate()
{
}

// Get temperature
void mcp7940x_tempGet(rtc_temperature_s* temp)
{
	temp->whole = 0;
	temp->frac = 0;
}

// User alarm uses alarm 1
void mcp7940x_setUserAlarmWake(alarm_s* alarm)
{
	// Clear flag
	rtc_userAlarmState();
}

// System wakeup uses alarm 2
// NOTE: Alarm 2 doesn't have seconds
void mcp7940x_setSystemAlarmWake(alarm_s* alarm)
{
	// Clear flag
	rtc_systemAlarmState();
}

// Get user alarm state
bool mcp7940x_userAlarmState()
{
	return false;
}

// Get system alarm state
bool mcp7940x_systemAlarmState()
{
	return false;
}

#endif
