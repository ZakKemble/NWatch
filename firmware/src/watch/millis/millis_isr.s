/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#define __SFR_OFFSET 0
#include <avr/io.h>
#include <avr/interrupt.h>
#include "millis/millis_config.h"

.text
.global ISR_VECT
.type   ISR_VECT, @function

.extern milliseconds

ISR_VECT:

	// Save registers
	push	r0
	push	r24
	push	r25
	in		r0, SREG

	// Adjust timer OCR
	lds		r24, REG_OCR
	subi	r24, (256 - OCR_VAL)
	sts		REG_OCR, r24

	// Increment milliseconds
	lds		r24, milliseconds
	lds		r25, milliseconds+1
	adiw	r24, INCREMENT_COUNT
	sts		milliseconds+1, r25
	sts		milliseconds, r24

	// Restore registers
	out		SREG, r0
	pop		r25
	pop		r24
	pop		r0

	reti
