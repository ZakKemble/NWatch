/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef UART_H_
#define UART_H_

#define UART_TX_P D1
#define UART_RX_P D0

#if COMPILE_UART

void uart_init(void);
void uart_put(byte);
bool uart_get_nb(byte*);

#else

#define uart_init()\
	power_usart0_disable();\
	pinPullup(UART_RX_P, PU_EN);\
	pinPullup(UART_TX_P, PU_EN);

#define uart_put(data) EMPTY_FUNC

#endif

#endif /* UART_H_ */
