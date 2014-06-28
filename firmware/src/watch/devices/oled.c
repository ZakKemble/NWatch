/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// OLED control

#include <avr/io.h>
#include <util/delay.h>
#include "common.h"
#include "devices/oled.h"
#include "devices/oled_defs.h"
#include "drivers/spi.h"
#include "watchconfig.h"

#define CSN	B2
#define DC	B0
#define RST	D7

#define spiSelect()		(pinWrite(CSN, LOW))
#define spiDeselect()	(pinWrite(CSN, HIGH))
#define cmdMode()		(pinWrite(DC, LOW))
#define dataMode()		(pinWrite(DC, HIGH))
#define rstHigh()		(pinWrite(RST, HIGH))
#define rstLow()		(pinWrite(RST, LOW))

static inline bool oled_select(void)
{
	spi_enable();
	spiSelect();
	return true;
}

static inline bool oled_deselect(void)
{
	spiDeselect();
	spi_disable();
	return false;
}

#define MODE_CMD	(cmdMode())
#define MODE_DATA	(dataMode())
#define CHIPSELECT(mode) mode; \
	for(bool cs = oled_select(); cs; cs = oled_deselect()) 

byte oledBuffer[FRAME_BUFFER_SIZE];

static void resetPosition(void);
static void sendCmd(byte);
static void sendCmd2(byte, byte);

void oled_init()
{
	pinMode(CSN, OUTPUT);
	pinMode(DC, OUTPUT);

	rstHigh();
	pinMode(RST, OUTPUT);

	delay(50);
	rstLow();
	delay(50);
	rstHigh();
	delay(50);

//	sendCmd(OLED_OFF);

	resetPosition();

	sendCmd2(OLED_SETMUX, 63);
	sendCmd2(OLED_DISPLAY_OFFSET, 0);
	sendCmd(OLED_DISPLAY_START | 0);
	oled_set180(watchConfig.display180);
	sendCmd2(OLED_COMCFG, 0x12);
	oled_setBrightness(watchConfig.brightness * 85);
	sendCmd(OLED_DISPLAY_SHOWRAM);
	oled_setInvert(watchConfig.invert);
	sendCmd2(OLED_CLOCK_FREQ, 0x80);
	sendCmd2(OLED_CHARGEPUMP, OLED_CHARGEPUMP_EN);

	sendCmd(OLED_ON);

//	sendCmd2(OLED_PRECHARGE_PERIOD, 0b11110001);//0xF1); // pre-charge period
//	sendCmd2(OLED_VCOM_LEVEL, 0x20); // 0x40 // V-COM deselect level
	sendCmd2(OLED_MEMMODE, OLED_MEM_HORIZ);

	delay(20);
	oled_flush();
	delay(10);
}

static void resetPosition()
{
	CHIPSELECT(MODE_CMD)
	{
		spi_transfer_nr(0x22);
		spi_transfer_nr(0x00);
		spi_transfer_nr(0x07);

		spi_transfer_nr(0x21);
		spi_transfer_nr(0x00);
		spi_transfer_nr(0x7F);
	}
}

static void sendCmd2(byte cmd, byte val)
{
	CHIPSELECT(MODE_CMD)
	{
		spi_transfer_nr(cmd);
		spi_transfer_nr(val);
	}
}

static void sendCmd(byte cmd)
{
	CHIPSELECT(MODE_CMD)
	{
		spi_transfer_nr(cmd);
	}		
}

void oled_flush()
{
	resetPosition();

	CHIPSELECT(MODE_DATA)
	{
		debugPin_spi(HIGH);

		// Here we load a byte from the global variable buffer into a fast local variable.
		// This is done while we're waiting for the SPI transfer to complete.
		// Delay cycles is also used to replace loop_until_bit_is_set().
		// In total, we go from ~3.84ms transfer time of the basic loop to ~2.31ms using local variables and delay cycles. (4MHz SPI, 1KB frame buffer)
		// As an added bonus we clear the frame buffer with the extra clock cycles which means we don't have to wait for memset() to clear it later on.
		// The minimum possible transfer time for 4MHz SPI and 1KB frame buffer is 2.048ms. 12.5% overhead (1 cycle to read SPSR, 1 cycle to set SPDR)... not bad :3

		for(uint i=0;i<FRAME_BUFFER_SIZE;i++)
		{
			byte next = oledBuffer[i]; // Load next byte
			oledBuffer[i] = 0x00; // Clear buffer byte

			// At max speed SPI takes 16 cycles to send a byte
			// 8 cycles were used to increment the loop counter, compare the counter, loading next byte and clearing buffer byte
			// 8 cycles are left
			__builtin_avr_delay_cycles(8);

			SPSR; // Need to read register to clear SPIF

			SPDR = next; // Send byte
		}

		// After sending the last byte the for loop exits, so we need to wait for the transfer to finish here
		__builtin_avr_delay_cycles(14);
		SPSR;
		//loop_until_bit_is_set(SPSR, SPIF);

		// Original method
		//for(uint i=0;i<FRAME_BUFFER_SIZE;i++)
		//	spi_transfer_nr(oledBuffer[i]);

		debugPin_spi(LOW);
	}
}

void oled_power(bool on)
{
	sendCmd(on ? OLED_ON : OLED_OFF);
}

void oled_setBrightness(byte brightness)
{
	sendCmd2(OLED_SETCONTRAST, brightness);
}

void oled_setInvert(bool invert)
{
	sendCmd(invert ? OLED_INVERT : OLED_NONINVERT);
}

void oled_set180(bool rotate)
{
	if(rotate)
	{
		sendCmd(OLED_SEG_REMAP);
		sendCmd(OLED_SCANDIR_REMAP);
	}
	else
	{
		sendCmd(OLED_SEG_NML);
		sendCmd(OLED_SCANDIR_NML);
	}
}

