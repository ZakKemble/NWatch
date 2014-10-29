/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2014 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef MCP7940X_H_
#define MCP7940X_H_

#if RTC_SRC == RTC_SRC_MCP7940X

#define RTC_I2C_ADDR	MCP7940X_I2C
#define RTCFUNC_PREFIX	mcp7940x_

void mcp7940x_init(void);
void mcp7940x_sqw(rtc_sqw_t);
void mcp7940x_get(timeDate_s*);
void mcp7940x_save(timeDate_s*);
void mcp7940x_tempUpdate(void);
void mcp7940x_tempGet(rtc_temperature_s*);
void mcp7940x_setUserAlarmWake(alarm_s*);
void mcp7940x_setSystemAlarmWake(alarm_s*);
bool mcp7940x_userAlarmState(void);
bool mcp7940x_systemAlarmState(void);

#endif

#endif /* MCP7940X_H_ */
