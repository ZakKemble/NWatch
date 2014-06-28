/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef ALARM_H_
#define ALARM_H_

#include "typedefs.h"

#define ALARM_COUNT 10

#define alarmDayEnabled(days, day) (days & _BV(day))

void alarm_init(void);
s_alarm* alarm_get(void);
s_alarm* alarm_getNext(void);
byte alarm_getNextDay(void);
char alarm_getDayLetter(byte);
void alarm_save(void);
void alarm_update(void);
void alarm_updateNextAlarm(void);

#endif /* ALARM_H_ */