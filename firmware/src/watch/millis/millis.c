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

static volatile millis_t milliseconds;

// Initialise library
void millis_init()
{
	// Timer settings
	SET_TCCRA();
	SET_TCCRB();
	REG_TIMSK = _BV(BIT_OCIE);
	REG_OCR = ((F_CPU / PRESCALER) / 1000);
}

// Get current milliseconds
millis_t millis_get()
{
	millis_t ms;
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
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
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
	{
		milliseconds = 0;
	}
}

// Add time
void millis_add(millis_t ms)
{
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
	{
		milliseconds += ms;
	}
}

// Subtract time
void millis_subtract(millis_t ms)
{
	ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
	{
		milliseconds -= ms;
	}
}

ISR(ISR_VECT)
{
	++milliseconds;
}
