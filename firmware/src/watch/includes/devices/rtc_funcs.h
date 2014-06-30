/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef RTC_FUNCS_H_
#define RTC_FUNCS_H_

#define unitsOnly(data)		(0x0F & data)
#define tens2Dec(data)		(data>>4)

static byte bcd2dec(byte bcd)
{
	return ((tens2Dec(bcd) * 10) + unitsOnly(bcd));
}

static byte dec2bcd(byte dec)
{
	return ((div10(dec) << 4) + mod10(dec));
}

// I2C read
static bool read(byte address, void* data, byte count)
{
	// Start
	i2c_start();

	// Write to set register address
	if(!i2c_write(RTC_I2C_ADDR | I2C_W)) // Slave address + write
		return i2c_stop_error();
	else if(!i2c_write(address)) // Register address
		return i2c_stop_error();

	// Repeat start
	i2c_start();

	// Set register address
	if(!i2c_write(RTC_I2C_ADDR | I2C_R)) // Slave address + read
		return i2c_stop_error();

	// Read data
	count--;
	LOOP(count, i)
	{
		if(!i2c_read(&((byte*)data)[i], I2C_ACK))
			return i2c_stop_error();
	}

	if(!i2c_read(&((byte*)data)[count], I2C_NACK))
		return i2c_stop_error();

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
	if(!i2c_write(RTC_I2C_ADDR | I2C_W)) // Slave address + write
		return i2c_stop_error();
	else if(!i2c_write(address)) // Register address
		return i2c_stop_error();
	else if(!i2c_write(data)) // Write data
		return i2c_stop_error();

	// Stop
	i2c_stop();
	
	return true;
}

#endif /* RTC_FUNCS_H_ */
