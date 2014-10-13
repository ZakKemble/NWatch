/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef PWRMGR_H_
#define PWRMGR_H_

typedef enum
{
	PWR_ACTIVE_BUZZER = 0,
	PWR_ACTIVE_LED = 1,
	PWR_ACTIVE_DISPLAY = 2,
	PWR_ACTIVE_BUTTONS = 3,
	PWR_ACTIVE_STOPWATCH = 4,
	PWR_ACTIVE_ALARM = 5,
	PWR_ACTIVE_COUNT = 6 // This should always be last
} pwr_active_t;

typedef enum
{
	PWR_STATE_NONE, // Power down sleep allowed
	PWR_STATE_IDLE, // Idle sleep allowed
	PWR_STATE_BUSY // No sleep allowed
} pwr_state_t;

void pwrmgr_init(void);
void pwrmgr_update(void);
void pwrmgr_setState(pwr_active_t, pwr_state_t);
bool pwrmgr_userActive(void);

#endif /* PWRMGR_H_ */
