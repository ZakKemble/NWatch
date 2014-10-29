/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#define EEPROM_CHECK_NUM 78 // Any 8 bit number that isn't 0 or 255

appconfig_s appConfig;

static byte eepCheck EEMEM = EEPROM_CHECK_NUM;

static appconfig_s eepConfig EEMEM = {
	0, // sleep timeout (this value * 5 = sleep timeout in secs)
	false, // invert
#if COMPILE_ANIMATIONS
	true, // animations
#endif
	true, // 180 rotate
	false, // FPS
	TIMEMODE_24HR,
	{
		255 // volume + brightness (all max)
	}
};

void appconfig_init()
{
	if(eeprom_read_byte(&eepCheck) == EEPROM_CHECK_NUM)
		eeprom_read_block(&appConfig, &eepConfig, sizeof(appconfig_s));
	else
	{
		eeprom_write_byte(&eepCheck, EEPROM_CHECK_NUM);
		appconfig_reset();
	}

//	if(appConfig.sleepTimeout > 12)
//		appConfig.sleepTimeout = 0;
}

void appconfig_save()
{
	eeprom_update_block(&appConfig, &eepConfig, sizeof(appconfig_s));
}

void appconfig_reset()
{
	appConfig.sleepTimeout = 1;
	appConfig.invert = false;
#if COMPILE_ANIMATIONS
	appConfig.animations = true;
#endif
	appConfig.display180 = true;
	appConfig.showFPS = true;
	appConfig.timeMode = TIMEMODE_24HR;
	appConfig.volumes = 255;

	appconfig_save();

	alarm_reset();
}
