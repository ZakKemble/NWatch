/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef BUZZER_H_
#define BUZZER_H_

#include "typedefs.h"

typedef enum
{
	TONE_2KHZ = 1000,
	TONE_2_5KHZ = 800,
	TONE_3KHZ = 667,
	TONE_3_5KHZ = 572,
	TONE_4KHZ = 500,
	TONE_4_5KHZ = 445,
	TONE_5KHZ = 400,
} tone_t;

typedef enum
{
	VOL_OTHER = 0,
	VOL_UI = 1,
	VOL_ALARM = 2,
	VOL_HOUR = 3
} vol_t;

void buzzer_init(void);
void buzzer_buzz(byte, tone_t, vol_t);
//void buzzer_buzzb(byte, tone_t, vol_t);
bool buzzer_buzzing(void);
void buzzer_update(void);

#endif /* BUZZER_H_ */