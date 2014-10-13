/*
 * Project: Lightweight millisecond tracking library
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/millisecond-tracking-library-for-avr/
 */

#ifndef MILLIS_CONFIG_H_
#define MILLIS_CONFIG_H_

#define MILLIS_DATATYPE	unsigned int

#define CLOCKSEL (_BV(CS21)|_BV(CS20))
#define PRESCALER 32

#define INCREMENT_COUNT	1

#define REG_TCCRA		TCCR2A
#define REG_TCCRB		TCCR2B
#define REG_TIMSK		TIMSK2
#define REG_OCR			OCR2A
#define BIT_WGM			WGM21
#define BIT_OCIE		OCIE2A
#define ISR_VECT		TIMER2_COMPA_vect
#define pwr_enable()	power_timer2_enable()
#define pwr_disable()	power_timer2_disable()

//#define SET_TCCRA()	(REG_TCCRA = _BV(BIT_WGM))
#define SET_TCCRA()	(EMPTY_FUNC)
#define SET_TCCRB()	(REG_TCCRB = CLOCKSEL)

#define OCR_VAL ((F_CPU / PRESCALER) / 1000)

#endif /* MILLIS_CONFIG_H_ */
