/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DS1307_H_
#define DS1307_H_

#if RTC_SRC == RTC_SRC_DS1307

#define RTC_I2C_ADDR	DS1307_I2C
#define RTCFUNC_PREFIX	ds1307_

void ds1307_init(void);
void ds1307_sqw(rtc_sqw_t);
void ds1307_get(timeDate_s*);
void ds1307_save(timeDate_s*);
void ds1307_tempUpdate(void);
void ds1307_tempGet(rtc_temperature_s*);
void ds1307_setUserAlarmWake(alarm_s*);
void ds1307_setSystemAlarmWake(alarm_s*);
bool ds1307_userAlarmState(void);
bool ds1307_systemAlarmState(void);

#endif

#endif /* DS1307_H_ */
