/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <stdlib.h>
#include "common.h"
#include "watchfaces/ui.h"
#include "draw.h"
#include "resources.h"
#include "devices/oled.h"
#include "devices/battery.h"

void drawBattery()
{
	uint battLevel = battery_voltage();
	const byte* battIcon;
	if(battLevel < 3200)
		battIcon = battIconEmpty;
	else if(battLevel < 3700)
		battIcon = battIconLow;
	else if(battLevel < 4000)
		battIcon = battIconHigh;
	else
		battIcon = battIconFull;

	draw_bitmap_s2(&newImage(0, FRAME_HEIGHT - 8, battIcon, 16, 8, WHITE, NOINVERT, 0));
}