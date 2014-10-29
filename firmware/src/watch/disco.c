/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

// NOT FINISHED
// Will be like the tunes for the buzzer, but for the LEDs instead

#if DISCOMEM_TYPE == DISCOMEM_PROGMEM
#define disco_read(x) (pgm_read_word(&x))
#elif DISCOMEM_TYPE == DISCOMEM_EEPROM
#define disco_read(x) (eeprom_read_word((const uint16_t*)&x))
#else
#define disco_read(x) (x)
#endif

static byte idx;
static const disco_t* disco;
static discoPrio_t prio;

static void next(void);

void disco_play(const disco_t* _disco, discoPrio_t _prio)
{
	if(_prio < prio)
		return;
	prio = _prio;
	disco = _disco;
	idx = 0;
	next();
}

void disco_stop(discoPrio_t _prio)
{
	UNUSED(_prio);
//	buzzer_buzz(0, TONE_STOP, _prio, NULL);
	prio = PRIO_MIN;
}

static void next()
{
	uint data = disco_read(disco[idx++]);
	byte len = data;
	if(len != TONE_REPEAT)
	{
//		buzzer_buzz(len, (tone_t)(data>>8), vol, prio, next);
		if(len == TONE_STOP)
			prio = PRIO_MIN;
	}
	else
	{
		idx = 0;
		next();
	}
}
