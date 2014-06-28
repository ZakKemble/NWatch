/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef TIME_H_
#define TIME_H_

typedef enum
{
	RTCWAKE_NONE,
	RTCWAKE_SYSTEM,
	RTCWAKE_USER,
	RTCWAKE_USER_SYSTEM
} rtcwake_t;

extern time_s timeData;

void time_init(void);
void time_sleep(void);
rtcwake_t time_wake(void);
void time_set(time_s*);
bool time_isLeapYear(byte);
byte time_dow(int, month_t, day_t);
byte time_monthDayCount(month_t, byte);
char time_hourAmPm(byte*);
void time_update(void);

#endif /* TIME_H_ */