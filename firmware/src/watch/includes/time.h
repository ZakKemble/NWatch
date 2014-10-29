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

extern timeDate_s timeDate;

void time_init(void);
void time_sleep(void);
void time_shutdown(void);
rtcwake_t time_wake(void);
void time_set(timeDate_s*);
bool time_isLeapYear(byte);
day_t time_dow(byte, month_t, byte);
byte time_monthDayCount(month_t, byte);
void time_update(void);
char* time_timeStr(void);
void time_timeMode(time_s*, timemode_t);
//timestamp_t time_getTimestamp(void);
//timestamp_t time_timeDate2TimeStamp(time_s*);

#endif /* TIME_H_ */
