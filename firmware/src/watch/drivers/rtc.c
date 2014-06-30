/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if RTC_SRC == RTC_SRC_INTERNAL

void rtc_init()
{
	delay(1000);

	TIMSK2 &= ~(_BV(OCIE2A)|_BV(OCIE2B)|_BV(TOIE2));
	ASSR |= _BV(AS2);
	TCNT2 = 0x00;
	TCCR2B = _BV(CS22)|_BV(CS20);
	while(ASSR & (_BV(OCR2BUB)|_BV(TCR2AUB)|_BV(TCR2BUB)));
	TIFR2 = 0xFF;
	TIMSK2 |= _BV(OCIE2A)|_BV(TOIE2);
}

// dont forget about millis()!
// square wave
// should tick twice per sec
// 1 per sec when in sleep

void rtc_tempUpdate()
{
	// read internal temperature sensor
}

void rtc_tempGet(rtc_temperature_s* temp)
{
	temp->whole = 0;
	temp->frac = 0;
}

#endif
