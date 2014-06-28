/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/io.h>
#include <string.h>
#include "common.h"
#include "devices/ds3231.h"
#include "devices/ds3231_defs.h"
#include "drivers/i2c.h"

static bool read(byte, byte*, byte);
static bool write(byte, byte);

void ds3231_init()
{
	// Set registers

	byte data;

	// Control
	// Enable oscillator
	read(DS3231ADDR_CTRL, &data, 1);
	bits_clr(data, _BV(DS3231BIT_EOSC)|_BV(DS3231BIT_RS1)|_BV(DS3231BIT_RS2));
	write(DS3231ADDR_CTRL, data);

	// Status
	// Turn off 32KHz output
	// Unset alarm 1 & 2 interrupts
	read(DS3231ADDR_STATUS, &data, 1);
	bits_clr(data, _BV(DS3231BIT_EN32KHZ)|_BV(DS3231BIT_A2F)|_BV(DS3231BIT_A1F));
	write(DS3231ADDR_STATUS, data);

	// Set 1Hz output
	ds3231_sqw(DS3231_SQW_ON);
}

// Switch between 1Hz output and alarm interrupt output
void ds3231_sqw(bool enable)
{
	byte data;
	read(DS3231ADDR_CTRL, &data, 1);
	if(enable) // 1Hz output
	{
		bit_set(data, DS3231BIT_1HZ);
		bit_clr(data, DS3231BIT_INTCN);
	}
	else // Alarm output
	{
		bit_clr(data, DS3231BIT_1HZ);
		bit_set(data, DS3231BIT_INTCN);
	}		
	write(DS3231ADDR_CTRL, data);
}

// Get time
void ds3231_get(s_time* timeData)
{
	read(DS3231ADDR_SECS, (byte*)timeData, sizeof(s_time));

	// Month and day start at 1, but we want to start at 0
	if(timeData->day > 0)
		timeData->day--;

	// Can't subtract 1 if month is BCD 10, have to do it manually
	if(timeData->month > 0)
	{
		if(timeData->month != 0b00010000)
			timeData->month--;
		else
			timeData->month = 0b00001001;
	}		
}

// Save time
void ds3231_save(s_time* timeData)
{
	// Month is stored starting at 0 in program, but RTC starts at 1
	byte month = timeData->month + 1;
	if(month == 0b00001010) // invalid BCD, added 1 to 9 = 10 = bad
		month = 0b00010000; // add 6 to fix, but that increases program size, so just set manually

	write(DS3231ADDR_SECS,	timeData->secs);
	write(DS3231ADDR_MINS,	timeData->mins);
	write(DS3231ADDR_HRS,	timeData->hours);
	write(DS3231ADDR_DAY,	timeData->day + 1); // Day is also stored starting at 0 in program, but RTC starts at 1
	write(DS3231ADDR_DATE,	timeData->date);
	write(DS3231ADDR_MONTH,	month);
	write(DS3231ADDR_YEAR,	timeData->year);
}

// Get temperature
void ds3231_temp(char* tempInt, byte* tempFrac)
{
	read(DS3231ADDR_TEMPH, (byte*)tempInt, 1);
	read(DS3231ADDR_TEMPL, tempFrac, 1);
}

// User alarm uses alarm 1
void ds3231_setUserAlarmWake(s_alarm* alarm)
{
	// Clear flag
	ds3231_userAlarmState();

	byte data;
	read(DS3231ADDR_CTRL, &data, 1);
	if(alarm != NULL)
	{
		write(DS3231ADDR_ALARM1_SECS,	0);
		write(DS3231ADDR_ALARM1_MINS,	alarm->min);
		write(DS3231ADDR_ALARM1_HRS,	alarm->hour);
		write(DS3231ADDR_ALARM1_DAYDATE,0b10000000 | alarm->days);
		bit_set(data, DS3231BIT_A1IE);
	}
	else // Alarm disabled
		bit_clr(data, DS3231BIT_A1IE);
	write(DS3231ADDR_CTRL, data);
}

// System wakeup uses alarm 2
// NOTE: Alarm 2 doesn't have seconds
void ds3231_setSystemAlarmWake(s_alarm* alarm)
{
	// Clear flag
	ds3231_systemAlarmState();

	byte data;
	read(DS3231ADDR_CTRL, &data, 1);
	if(alarm != NULL)
	{
		write(DS3231ADDR_ALARM2_MINS,	alarm->min);
		write(DS3231ADDR_ALARM2_HRS,	0b10000000 | alarm->hour);
		write(DS3231ADDR_ALARM2_DAYDATE,0b10000000 | alarm->days);
		bit_set(data, DS3231BIT_A2IE);
	}
	else // Alarm disabled
		bit_clr(data, DS3231BIT_A2IE);
	write(DS3231ADDR_CTRL, data);
}

// Get user alarm state
bool ds3231_userAlarmState()
{
	byte data;
	read(DS3231ADDR_STATUS, &data, 1);
	bool state = data & _BV(DS3231BIT_A1F);
	if(state) // Clear state if its set
	{
		bit_clr(data, DS3231BIT_A1F);
		write(DS3231ADDR_STATUS, data);
	}

	return state;
}

// Get systel alarm state
bool ds3231_systemAlarmState()
{
	byte data;
	read(DS3231ADDR_STATUS, &data, 1);
	bool state = data & _BV(DS3231BIT_A2F);
	if(state) // Clear state if its set
	{
		bit_clr(data, DS3231BIT_A2F);
		write(DS3231ADDR_STATUS, data);
	}

	return state;
}

// I2C read
static bool read(byte address, byte* data, byte count)
{
	// Start
	i2c_start();

	// Write to set register address
	if(!i2c_write(DS3231I2C_W)) // Slave address + write
		return i2c_stop_error();
	else if(!i2c_write(address)) // Register address
		return i2c_stop_error();

	// Repeat start
	i2c_start();

	// Set register address
	if(!i2c_write(DS3231I2C_R)) // Slave address + read
		return i2c_stop_error();

	// Read data
	for(byte i=0;i<count;i++)
	{
		if(!i2c_read(&data[i], (i < (count - 1)) ? I2C_ACK : I2C_NACK))
			return i2c_stop_error();
	}

	// Stop
	i2c_stop();

	return true;
}

// I2C write
static bool write(byte address, byte data)
{
	// Start
	i2c_start();

	// Write data at register address
	if(!i2c_write(DS3231I2C_W)) // Slave address + write
		return i2c_stop_error();
	else if(!i2c_write(address)) // Register address
		return i2c_stop_error();
	else if(!i2c_write(data)) // Write data
		return i2c_stop_error();

	// Stop
	i2c_stop();
	
	return true;
}
