/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

// NOTE: Bootloader puts copy of MCUSR in R2

void get_mcusr(void) __attribute__((naked)) __attribute__((section(".init3"))); // init0?
void get_mcusr()
{
	MCUSR = 0;
	wdt_disable();
}

#if WDT_ENABLE

#define wdt_int_reset()		(WDTCSR |= _BV(WDIE)|_BV(WDE))

static volatile bool resetWDT;
static byte mcusr_mirror __attribute__ ((section (".noinit")));

void get_mcusr(void) __attribute__((naked)) __attribute__((section(".init3")));

void get_mcusr()
{
	mcusr_mirror = MCUSR;
	MCUSR = 0;

	wdt_enable(WDTO_2S);
	wdt_int_reset();
}

void wdt_update()
{
	if(resetWDT)
	{
		wdt_int_reset();
		resetWDT = false;
	}		
}

#if WDT_DEBUG
bool wdt_wasReset()
{
	return (mcusr_mirror & _BV(WDRF));
}
#endif

ISR(WDT_vect)
{
	resetWDT = true;
}

#endif

void wdt_forceReset()
{
	cli();
	wdt_enable(WDTO_15MS);
	while(1){}
}
