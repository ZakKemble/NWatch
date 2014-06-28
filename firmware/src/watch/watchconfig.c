/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <avr/eeprom.h>
#include "common.h"
#include "watchconfig.h"

s_watchconfig watchConfig;

static const s_watchconfig eepConfig EEMEM = {
	0,
	0,
	1, // sleep timeout
	false,
	true,
	0,
	true,
	false,
	{
		255
	}
};

static void load(void);
static void save(void);

void watchconfig_init()
{
	load();
}

static void load()
{
	eeprom_read_block(&watchConfig, &eepConfig, sizeof(s_watchconfig));
}

static void save()
{
	eeprom_update_block(&watchConfig, (s_watchconfig*)&eepConfig, sizeof(s_watchconfig));
}

void watchconfig_save()
{
	save();
}