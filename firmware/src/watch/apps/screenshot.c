/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include "common.h"

#if COMPILE_SCREENSHOT

static bool send;

void screenshot_do()
{
	send = true;
}

void screenshot_send()
{
	if(!send)
		return;

	for(uint i=0;i<FRAME_BUFFER_SIZE;i++)
		uart_put(oledBuffer[i]);
	send = false;
}

#endif
