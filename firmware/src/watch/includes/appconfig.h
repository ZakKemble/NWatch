/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef APPCONFIG_H_
#define APPCONFIG_H_

extern appconfig_s appConfig;

void appconfig_init(void);
void appconfig_save(void);
void appconfig_reset(void);

#endif /* APPCONFIG_H_ */
