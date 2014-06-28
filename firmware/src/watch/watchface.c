/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#include <stdio.h>
#include "common.h"
#include "watchface.h"

static watchFace_f func;

void watchface_setFace(watchFace_f faceFunc)
{
	func = faceFunc;
}

void watchface_loadFace()
{
	if(func != NULL)
		func();
}
