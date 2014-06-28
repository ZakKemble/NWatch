/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef UART_H_
#define UART_H_

#define UART_ENABLE	0

#if UART_ENABLE
void uart_init(void);
#else
#define uart_init() ((void)(0))
#endif

#endif /* UART_H_ */