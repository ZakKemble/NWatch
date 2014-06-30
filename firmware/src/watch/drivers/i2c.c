/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// I2C driver
// Polling based, interrupts aren't really needed for this project since only a few bytes are transfered every-so-often

#include "common.h"

#if COMPILE_I2C

#define TWI_FREQ	400000UL
#define TWI_BR		(((F_CPU / TWI_FREQ) - 16) / 2)

void i2c_init()
{
	TWBR = TWI_BR;

	// Set I2C to known state (just in case)
	i2c_resetState();

	// Disable I2C
	power_twi_disable();
}

// Reset to known state (as per what the DS3231 datasheet says)
void i2c_resetState()
{
	CLEAR_BITS(TWCR, TWEN); // Disable TWI
	pinMode(SDA, INPUT);
	pinPullup(SDA, PU_EN);
	delay(1);

	// Toggle SDL until SDA goes HIGH or times out
	byte count = 64; // 64 * 1ms = 64ms timeout
	while(!pinRead(SDA) && count--)
	{
		delay(1);
		pinWrite(SCL, TOGGLE);
	}

	// Back to normal
	pinMode(SDA, OUTPUT);
	pinMode(SCL, OUTPUT);
	pinWrite(SDA, HIGH);
	pinWrite(SCL, HIGH);
}

void i2c_start()
{
	// Enable I2C
	power_twi_enable();

	TWBR = TWI_BR; // Datasheet says to re-initialize after waking up

	// START
	LOAD_BITS(TWCR, TWINT, TWSTA, TWEN);

	// Wait for START
	loop_until_bit_is_set(TWCR, TWINT);
}

void i2c_stop()
{
	// STOP
	LOAD_BITS(TWCR, TWINT, TWEN, TWSTO);

	// Wait for STOP
	// WARNING: A bad I2C line can cause this loop to hang
	//loop_until_bit_is_set(TWCR, TWSTO);
	byte counter = 255; // 255 * 5us = 1.275ms timeout
	while(bit_is_clear(TWCR, TWSTO) && counter--)
		delay_us(5);

	// Disable I2C
	CLEAR_BITS(TWCR, TWEN);

	power_twi_disable();
}

bool i2c_stop_error()
{
	i2c_stop();
	return false;
}

bool i2c_write(byte data)
{
	// Set data
	TWDR = data;

	// Begin sending
	LOAD_BITS(TWCR, TWINT, TWEN);

	// Wait for finish
	loop_until_bit_is_set(TWCR, TWINT);

	// Check status
	byte status = TW_STATUS;
	return (status == TW_MT_SLA_ACK || status == TW_MT_DATA_ACK || status == TW_MR_SLA_ACK);
}

bool i2c_read(byte* data, bool ack)
{
	// Expects more data (ACK) or not (NACK)
	//ack ? (SET_BITS(TWCR, TWEA)) : (CLEAR_BITS(TWCR, TWEA));
	// http://graphics.stanford.edu/~seander/bithacks.html#ConditionalSetOrClearBitsWithoutBranching
	TWCR = (TWCR & ~_BV(TWEA)) | (-ack & _BV(TWEA));

	// Begin receiving
	SET_BITS(TWCR, TWINT);

	// Wait for finish
	loop_until_bit_is_set(TWCR, TWINT);

	// Check status
	byte status = TW_STATUS;
	if(status != TW_MR_DATA_ACK && status != TW_MR_DATA_NACK)
		return false;

	// Read data
	*data = TWDR;
	return true;
}

#endif
