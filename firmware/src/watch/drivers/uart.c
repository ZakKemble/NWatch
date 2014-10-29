/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

// UART driver

#define BAUD 1000000

#include <util/setbaud.h>
#include "common.h"

#if COMPILE_UART

#define UART_ENABLE_STREAM	0
#define UART_BUFFSIZE 8

typedef struct{
	byte data[UART_BUFFSIZE];
	byte head;
	byte tail;
}ringBuffer_s;

#if UART_ENABLE_STREAM
static int put(char, FILE*);
FILE uart_io = FDEV_SETUP_STREAM(put, NULL, _FDEV_SETUP_WRITE);
#endif

// turn on / off
// recivice
// tx and rx buffers

static volatile ringBuffer_s rxBuffer;

void uart_init()
{
	pinPullup(UART_RX_P, PU_EN);
	pinMode(UART_TX_P, OUTPUT);

	UBRR0 = UBRR_VALUE;
#if USE_2X
	UCSR0A = _BV(U2X0);
#endif
	//UCSR0B = _BV(TXEN0);
#if UART_ENABLE_STREAM
	UCSR0B = _BV(TXEN0)|_BV(RXEN0)|_BV(RXCIE0);
	stdout = &uart_io;
#else
	UCSR0B = _BV(TXEN0)|_BV(RXEN0)|_BV(RXCIE0);
#endif
}

// Get next value
bool uart_get_nb(byte* b)
{// THIS NEEDS TO BE ATOMIC! (disable UART rx ISR then enable again)
	// Empty
	if(rxBuffer.head == rxBuffer.tail)
		return false;

	*b = rxBuffer.data[rxBuffer.tail];
	if (++rxBuffer.tail >= UART_BUFFSIZE)
		rxBuffer.tail = 0;

	return true;
}

#if UART_ENABLE_STREAM
static int put(char c, FILE* stream)
{
	UNUSED(stream); // Get rid of unused variable warning
	loop_until_bit_is_set(UCSR0A, UDRE0);
	UDR0 = c;
	return 0;
}
#endif

void uart_put(byte data)
{
	loop_until_bit_is_set(UCSR0A, UDRE0);
	UDR0 = data;
}

ISR(USART_RX_vect)
{
	int8_t diff = rxBuffer.head - rxBuffer.tail;
	if(diff < 0)
		diff += UART_BUFFSIZE;

	if(diff < UART_BUFFSIZE - 1)
	{
		rxBuffer.data[rxBuffer.head] = UDR0;
		if (++rxBuffer.head >= UART_BUFFSIZE)
			rxBuffer.head = 0;
	}
	else // Buffer full
		UDR0;
}

#endif
