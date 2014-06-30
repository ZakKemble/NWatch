/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef WDT_H_
#define WDT_H_

#define WDT_ENABLE		0
#define WDT_DEBUG		0

#if WDT_ENABLE
void wdt_update(void);
#else
#define wdt_update() ((void)(0))
#endif

#if WDT_ENABLE && WDT_DEBUG
bool wdt_wasReset(void);
#else
#define wdt_wasReset() (false)
#endif

void wdt_forceReset(void);

#endif /* WDT_H_ */
