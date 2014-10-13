/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef RTC_H_
#define RTC_H_

typedef enum
{
	RTC_SQW_OFF = 0,
	RTC_SQW_ON = 1
} rtc_sqw_t;

typedef struct
{
	signed char whole;
	byte frac;
}rtc_temperature_s;

#if RTC_SRC == RTC_SRC_INTERNAL

void rtc_init(void);
void rtc_tempUpdate(void);
void rtc_tempGet(rtc_temperature_s*);

#define rtc_sqw(enable)					EMPTY_FUNC
#define rtc_get(timeData)				EMPTY_FUNC
#define rtc_save(timeData)				EMPTY_FUNC
#define rtc_setUserAlarmWake(alarm)		EMPTY_FUNC
#define rtc_setSystemAlarmWake(alarm)	EMPTY_FUNC
#define rtc_userAlarmState()			(false)
#define rtc_systemAlarmState()			(false)

#else

#include "devices/ds3231.h"
#include "devices/ds1307.h"
#include "devices/mcp7940x.h"

#if !defined(RTCFUNC_PREFIX) || !defined(RTC_I2C_ADDR)
	#error "Invalid RTC Source"
#endif

#define RTCPREFIX(prefix, func)	CONCAT(prefix, func)
#define RTCFUNC(func)			RTCPREFIX(RTCFUNC_PREFIX, func)

#define rtc_init				(RTCFUNC(init))
#define rtc_sqw					(RTCFUNC(sqw))
#define rtc_get					(RTCFUNC(get))
#define rtc_save				(RTCFUNC(save))
#define rtc_tempUpdate			(RTCFUNC(tempUpdate))
#define rtc_tempGet				(RTCFUNC(tempGet))
#define rtc_setUserAlarmWake	(RTCFUNC(setUserAlarmWake))
#define rtc_setSystemAlarmWake	(RTCFUNC(setSystemAlarmWake))
#define rtc_userAlarmState		(RTCFUNC(userAlarmState))
#define rtc_systemAlarmState	(RTCFUNC(systemAlarmState))

#endif

#endif /* RTC_H_ */
