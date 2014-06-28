/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef WATCHCONFIG_H_
#define WATCHCONFIG_H_

#include "typedefs.h"

extern s_watchconfig watchConfig;

void watchconfig_init(void);
void watchconfig_save(void);

#endif /* WATCHCONFIG_H_ */