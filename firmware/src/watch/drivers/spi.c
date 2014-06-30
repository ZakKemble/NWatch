/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// SPI driver

#include "common.h"

#define MISO	B4
#define MOSI	B3
#define SCK		B5
#define SS		B2

static void init(void);

void spi_init()
{
	pinMode(SS, OUTPUT);
	pinMode(MOSI, OUTPUT);
	pinMode(SCK, OUTPUT);
	pinPullup(MISO, PU_EN);
	pinWrite(SS, HIGH);

	init();
	
	spi_disable();
}

static void init()
{
	SPCR = _BV(SPE)|_BV(MSTR);
	SPSR = _BV(SPI2X);
}

void spi_enable()
{
	power_spi_enable();
	init(); // Datasheet says to re-initialize after waking up
}

void spi_disable()
{
	power_spi_disable();
}
