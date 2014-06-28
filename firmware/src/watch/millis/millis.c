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
//#include <util/atomic.h>
#include <stdbool.h>
#include "millis/millis.h"

#ifndef F_CPU
	#error "F_CPU not defined!"
#endif

#if F_CPU < 256 || F_CPU >= 32640000
	#error "Bad F_CPU setting (<256 or >=32640000)"
#endif

#ifndef MILLIS_TIMER
	#error "Bad MILLIS_TIMER set"
#endif

// Decide what what prescaler and registers to use
#if MILLIS_TIMER == MILLIS_TIMER0

// Timer0

#if F_CPU > 16320000 // 16.32MHz - 65.28MHz
	#define CLOCKSEL (_BV(CS20))
	#define PRESCALER 256
#elif F_CPU > 2040000 // 2.04MHz - 16.32MHz
	#define CLOCKSEL (_BV(CS01)|_BV(CS00))
	#define PRESCALER 64
#elif F_CPU > 255 // 256Hz - 2.04MHz
	#define CLOCKSEL (_BV(CS01))
	#define PRESCALER 8
#endif

#define REG_TCCRA		TCCR0A
#define REG_TCCRB		TCCR0B
#define REG_TIMSK		TIMSK0
#define REG_OCR			OCR0A
#define BIT_WGM			WGM01
#define BIT_OCIE		OCIE0A
#define ISR_VECT		TIMER0_COMPA_vect
#define pwr_enable()	power_timer0_enable()
#define pwr_disable()	power_timer0_disable()

#define SET_TCCRA()	(REG_TCCRA = _BV(BIT_WGM))
#define SET_TCCRB()	(REG_TCCRB = CLOCKSEL)

#elif MILLIS_TIMER == MILLIS_TIMER1

// Timer1

// 1KHz - 65.28MHz
#define CLOCKSEL (_BV(CS10))
#define PRESCALER 1

#define REG_TCCRA		TCCR1A
#define REG_TCCRB		TCCR1B
#define REG_TIMSK		TIMSK1
#define REG_OCR			OCR1A
#define BIT_WGM			WGM12
#define BIT_OCIE		OCIE1A
#define ISR_VECT		TIMER1_COMPA_vect
#define pwr_enable()	power_timer1_enable()
#define pwr_disable()	power_timer1_disable()

#define SET_TCCRA()	(REG_TCCRA = 0)
#define SET_TCCRB()	(REG_TCCRB = _BV(BIT_WGM)|CLOCKSEL)

#elif MILLIS_TIMER == MILLIS_TIMER2

// Timer2

#if F_CPU > 16320000 // 16.32MHz - 32.64MHz
	#define CLOCKSEL (_BV(CS22)|_BV(CS20))
	#define PRESCALER 128
#elif F_CPU > 8160000 // 8.16MHz - 16.32MHz
	#define CLOCKSEL (_BV(CS22))
	#define PRESCALER 64
#elif F_CPU > 2040000 // 2.04MHz - 8.16MHz
	#define CLOCKSEL (_BV(CS21)|_BV(CS20))
	#define PRESCALER 32
#elif F_CPU > 255 // 256Hz - 2.04MHz
	#define CLOCKSEL (_BV(CS21))
	#define PRESCALER 8
#endif

#define REG_TCCRA		TCCR2A
#define REG_TCCRB		TCCR2B
#define REG_TIMSK		TIMSK2
#define REG_OCR			OCR2A
#define BIT_WGM			WGM21
#define BIT_OCIE		OCIE2A
#define ISR_VECT		TIMER2_COMPA_vect
#define pwr_enable()	power_timer2_enable()
#define pwr_disable()	power_timer2_disable()

#define SET_TCCRA()	(REG_TCCRA = _BV(BIT_WGM))
#define SET_TCCRB()	(REG_TCCRB = CLOCKSEL)

#else
	#error "Bad MILLIS_TIMER set"
#endif

#define OCR_VAL ((F_CPU / PRESCALER) / 1000)

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

#if !MILLIS_INLINE
static
#endif
volatile millis_t milliseconds;

// Initialise library
void millis_init()
{
	// Timer settings
	//SET_TCCRA();
	SET_TCCRB();
	REG_TIMSK = _BV(BIT_OCIE);
	REG_OCR = OCR_VAL;
}

// Get current milliseconds
millis_t millis_get()
{
	millis_t ms;
	MILLIS_ATOMIC()
	{
		ms = milliseconds;
	}
	return ms;
}

// Turn on timer and resume time keeping
void millis_resume()
{
	pwr_enable();
	REG_TIMSK |= _BV(BIT_OCIE);
}

// Pause time keeping and turn off timer to save power
void millis_pause()
{
	REG_TIMSK &= ~_BV(BIT_OCIE);
	pwr_disable();
}

// Reset milliseconds count to 0
void millis_reset()
{
	MILLIS_ATOMIC()
	{
		milliseconds = 0;
	}
}

// Add time
void millis_add(millis_t ms)
{
	MILLIS_ATOMIC()
	{
		milliseconds += ms;
	}
}

// Subtract time
void millis_subtract(millis_t ms)
{
	MILLIS_ATOMIC()
	{
		milliseconds -= ms;
	}
}

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
