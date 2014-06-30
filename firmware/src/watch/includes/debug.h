/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DEBUG_H_
#define DEBUG_H_

#if !DEBUG_MSGS
#define debug_printf(fmt, ...)	((void)(0))
#define debug_puts(str)			((void)(0))
#else
#define debug_printf(fmt, ...)	(printf_P(PSTR(fmt), ## __VA_ARGS__))
#define debug_puts(str)			(puts_P(PSTR(str)))
#endif

#endif /* DEBUG_H_ */
