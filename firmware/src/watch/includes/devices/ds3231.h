/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef DS3231_H_
#define DS3231_H_

#include "typedefs.h"

#define DS3231_SQW_ON	true
#define DS3231_SQW_OFF	false

void ds3231_init(void);
void ds3231_sqw(bool);
void ds3231_get(s_time*);
void ds3231_save(s_time*);
void ds3231_temp(char*, byte*);
void ds3231_setUserAlarmWake(s_alarm*);
void ds3231_setSystemAlarmWake(s_alarm*);
bool ds3231_userAlarmState(void);
bool ds3231_systemAlarmState(void);

#endif /* DS3231_H_ */