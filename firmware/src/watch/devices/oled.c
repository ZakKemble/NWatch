/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// OLED control

#include "common.h"
#include "devices/oled_defs.h"

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

#if OLED_CONTROLLER == OLED_CONTROLLER_SSD1306
static const byte oledConfig[] PROGMEM ={
//	OLED_SETMUX, 63,
//	OLED_DISPLAY_OFFSET, 0,
//	OLED_DISPLAY_START | 0,
//	OLED_COMCFG, 0x12,
//	OLED_DISPLAY_SHOWRAM,
//	OLED_CLOCK_FREQ, 0x80,
	OLED_CHARGEPUMP, OLED_CHARGEPUMP_EN,
//	OLED_PRECHARGE_PERIOD, 0b11110001, //0xF1 // pre-charge period
//	OLED_VCOM_LEVEL, 0x20, // 0x40 // V-COM deselect level
	OLED_MEMMODE, OLED_MEM_HORIZ,
	OLED_ON
};
#else
static const byte oledConfig[] PROGMEM ={
	OLED_ON
};
#endif

static void sendCmd(byte);
static void sendCmd2(byte, byte);

void oled_init()
{
	pinMode(CSN, OUTPUT);
	pinMode(DC, OUTPUT);

	rstHigh();
	pinMode(RST, OUTPUT);

	delay(1);
	rstLow();
	delay(1);
	rstHigh();
	delay(1);

	CHIPSELECT(MODE_CMD)
	{
		LOOP(sizeof(oledConfig), i)
			spi_transfer_nr(pgm_read_byte(&oledConfig[i]));
	}

	oled_set180(appConfig.display180);
	oled_setBrightness(appConfig.brightness * 85);
	oled_setInvert(appConfig.invert);

	delay(1);
	oled_flush();
}

#if OLED_CONTROLLER == OLED_CONTROLLER_SSD1306
static void resetPosition(void)
{
	CHIPSELECT(MODE_CMD)
	{
		spi_transfer_nr(0x22);
		spi_transfer_nr(0x00);
		spi_transfer_nr(0x07);

		spi_transfer_nr(0x21);
		spi_transfer_nr(0x00);
		spi_transfer_nr(0x7F);

		// also set display start line and display offset
	}
}
#endif

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
#if COMPILE_SCREENSHOT
	screenshot_send();
#endif

#if OLED_CONTROLLER == OLED_CONTROLLER_SSD1306
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

		// Or... instead of using the normal SPI bus, we could use USART in SPI mode which will give us double buffering to remove that 12.5% overhead. :O

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
#else

// Need to make sure this is optimized

	uint16_t buffer = 0;
	uint16_t start;
	
	for(uint8_t i=0;i<8;i++)
	{
		start = buffer;
		buffer += 128;
		
		// Need to manually set page and column with SH1106 :/
		CHIPSELECT(MODE_CMD)
		{
			spi_transfer_nr(0xB0 + i); // Set page
			spi_transfer_nr(0x02); // Set column lower 4 bits
			spi_transfer_nr(0x10); // Set column higher 4 bits
		}

		CHIPSELECT(MODE_DATA)
		{
			for(uint16_t i=start;i<buffer;i++)
			{
				uint8_t next = oledBuffer[i]; // Load next byte
				oledBuffer[i] = 0x00; // Clear buffer byte

				__builtin_avr_delay_cycles(8);

				SPSR; // Need to read register to clear SPIF

				SPDR = next; // Send byte
			}

			__builtin_avr_delay_cycles(14);
			SPSR;
		}
	}
#endif
}

void oled_power(oled_pwr_t on)
{
	sendCmd(on == OLED_PWR_ON ? OLED_ON : OLED_OFF);
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
		sendCmd2(OLED_SEG_REMAP, OLED_SCANDIR_REMAP);
	else
		sendCmd2(OLED_SEG_NML, OLED_SCANDIR_NML);
}
