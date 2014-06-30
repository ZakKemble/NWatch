/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef BUZZER_H_
#define BUZZER_H_

// TONE_VALUE = F_CPU / TONE_FREQ / 16
// TONE_VALUE should be kept below 256 (1960Hz) otherwise the datatype will be bumped up from char to int
typedef enum
{
	TONE_STOP = 0,
	TONE_PAUSE = 1,
	TONE_REPEAT = 2,
	TONE_2KHZ = 250,
	TONE_2_5KHZ = 200,
	TONE_3KHZ = 166,
	TONE_3_5KHZ = 143,
	TONE_4KHZ = 125,
	TONE_4_5KHZ = 111,
	TONE_5KHZ = 100,
} tone_t;

typedef enum
{
	VOL_OTHER = 0,
	VOL_UI = 1,
	VOL_ALARM = 2,
	VOL_HOUR = 3
} vol_t;

typedef enum
{
	PRIO_MIN = 0,
	PRIO_LOW = 1,
	PRIO_NML = 2,
	PRIO_HIGH = 3,
	PRIO_MAX = 255
} tonePrio_t;

#define PRIO_UI		PRIO_LOW
#define PRIO_ALARM	PRIO_HIGH
#define PRIO_HOUR	PRIO_NML

typedef void (*buzzFinish_f)(void);

#define buzzer_stop()	(buzzer_buzz(0, TONE_STOP, PRIO_MAX, NULL))

void buzzer_init(void);
void buzzer_buzz(byte, tone_t, vol_t, tonePrio_t, buzzFinish_f);
//void buzzer_buzzb(byte, tone_t, vol_t);
bool buzzer_buzzing(void);
void buzzer_update(void);

#endif /* BUZZER_H_ */
