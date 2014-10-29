/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DS3231_H_
#define DS3231_H_

#if RTC_SRC == RTC_SRC_DS3231

#define RTC_I2C_ADDR	DS3231_I2C
#define RTCFUNC_PREFIX	ds3231_

void ds3231_init(void);
void ds3231_sqw(rtc_sqw_t);
void ds3231_get(timeDate_s*);
void ds3231_save(timeDate_s*);
void ds3231_tempUpdate(void);
void ds3231_tempGet(rtc_temperature_s*);
void ds3231_setUserAlarmWake(alarm_s*);
void ds3231_setSystemAlarmWake(alarm_s*);
bool ds3231_userAlarmState(void);
bool ds3231_systemAlarmState(void);

#endif

#endif /* DS3231_H_ */
