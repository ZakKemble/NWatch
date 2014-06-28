/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef TIME_H_
#define TIME_H_

#include "typedefs.h"

typedef enum
{
	RTCWAKE_NONE,
	RTCWAKE_SYSTEM,
	RTCWAKE_USER,
	RTCWAKE_USER_SYSTEM
} rtcwake_t;

extern s_time timeData;

void time_init(void);
void time_sleep(void);
rtcwake_t time_wake(void);
bool time_halfSecond(void);
void time_set(s_time*);
bool time_isLeapYear(byte);
byte time_dow(int, byte, byte);
bool time_update(void);

#endif /* TIME_H_ */