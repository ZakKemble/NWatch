/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// UART driver
// This project only uses it for debugging purposes

#define BAUD 76800

#include <avr/io.h>
#include <util/setbaud.h>
#include <stdio.h>
#include "common.h"
#include "drivers/uart.h"

#if UART_ENABLE

static int put(char, FILE*);

FILE uart_io = FDEV_SETUP_STREAM(put, NULL, _FDEV_SETUP_WRITE);

void uart_init()
{
	// Pullup on RXD (already done in main init()?)
	pinPullup(D0, PULLUP_ENABLE);

	pinMode(D1, OUTPUT);

	UBRR0 = UBRR_VALUE;
#if USE_2X
	UCSR0A = _BV(U2X0);
#endif
	UCSR0B = _BV(TXEN0);

	stdout = &uart_io;
}

static int put(char c, FILE* stream)
{
	(void)(stream); // Get rid of unused variable warning
	loop_until_bit_is_set(UCSR0A, UDRE0);
	UDR0 = c;
	return 0;
}

#endif