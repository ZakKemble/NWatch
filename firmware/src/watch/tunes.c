/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

// Remove const when TUNEMEM is EEPMEM?

const tune_t tuneUsbPlugin[] TUNEMEM = {
	TONE_2KHZ<<8 | 50,
	TONE_PAUSE<<8 | 100,
	TONE_2_5KHZ<<8 | 50,
	TONE_PAUSE<<8 | 100,
	TONE_3KHZ<<8 | 200,
	TONE_STOP
};

const tune_t tuneUsbUnplug[] TUNEMEM = {
	TONE_3KHZ<<8 | 50,
	TONE_PAUSE<<8 | 100,
	TONE_2_5KHZ<<8 | 50,
	TONE_PAUSE<<8 | 100,
	TONE_2KHZ<<8 | 200,
	TONE_STOP
};

const tune_t tuneUsbCharged[] TUNEMEM = {
	TONE_2KHZ<<8 | 150,
	TONE_PAUSE<<8 | 150,
	TONE_2KHZ<<8 | 150,
	TONE_PAUSE<<8 | 150,
	TONE_4KHZ<<8 | 250,
	TONE_4KHZ<<8 | 250,
	TONE_STOP
};

const tune_t tuneHour[] TUNEMEM = {
	TONE_2_5KHZ<<8 | 150,
	TONE_PAUSE<<8 | 80,
	TONE_2_5KHZ<<8 | 150,
	TONE_STOP
};

const tune_t tuneAlarm[] TUNEMEM = {
	TONE_2KHZ<<8 | 100,
	TONE_PAUSE<<8 | 50,
	TONE_2KHZ<<8 | 100,
	TONE_PAUSE<<8 | 50,
	TONE_3KHZ<<8 | 100,
	TONE_PAUSE<<8 | 50,
	TONE_3KHZ<<8 | 100,
	TONE_PAUSE<<8 | 50,
	TONE_REPEAT
};

const tune_t tuneBtn1[] TUNEMEM = {
	TONE_2KHZ<<8 | 100,
	TONE_PAUSE<<8 | 50,
	TONE_3KHZ<<8 | 100,
	TONE_STOP
};

const tune_t tuneBtn2[] TUNEMEM = {
	TONE_3KHZ<<8 | 100,
	TONE_PAUSE<<8 | 50,
	TONE_3KHZ<<8 | 100,
	TONE_STOP
};

const tune_t tuneBtn3[] TUNEMEM = {
	TONE_3KHZ<<8 | 100,
	TONE_PAUSE<<8 | 50,
	TONE_2KHZ<<8 | 100,
	TONE_STOP
};
