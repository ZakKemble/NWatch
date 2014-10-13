/*
 * Project: Lightweight millisecond tracking library
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/millisecond-tracking-library-for-avr/
 */

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/power.h>
#include <util/atomic.h>
#include <stdbool.h>
#include "common.h"

static inline bool millis_interrupt_off(void)
{
	REG_TIMSK &= ~_BV(BIT_OCIE);
	return true;
}

static inline bool millis_interrupt_on(void)
{
	REG_TIMSK |= _BV(BIT_OCIE);
	return false;
}

// NEED TO DO A RESTORE THING! if paused then millis() is called it will unpause
#define MILLIS_ATOMIC() for(bool cs = millis_interrupt_off(); cs; cs = millis_interrupt_on())

volatile millis_t milliseconds;

// Initialise library
void millis_init()
{
	// Timer settings
	SET_TCCRA();
	SET_TCCRB();
	REG_TIMSK = _BV(BIT_OCIE);
	REG_OCR = OCR_VAL;
}

// Get current milliseconds
millis_t millis_get()
{
	millis_t ms;
	//MILLIS_ATOMIC()
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
	{
		ms = milliseconds;
	}
	return ms;
}

/*
ISR(ISR_VECT)
{
	// I'm using some ASM here because the C compiler is being derpy
	// and generating larger code than needed.
	// This ASM is the equivalent of the commented out C code below.
	//REG_OCR += OCR_VAL;
	register uint8_t tmp;
	asm volatile(
		"lds	%[_TMP], %[_OCR]\n\t"
		"subi	%[_TMP], %[_VAL]\n\t"
		"sts	%[_OCR1], %[_TMP]\n\t"
		: [_OCR1] "=m" (REG_OCR), [_TMP] "=r" (tmp)
		: [_VAL] "M" ((256 - OCR_VAL)), [_OCR] "i" (&REG_OCR)
	);

	//milliseconds += 4;
	++milliseconds;
}
*/