/*
 * Project: N|Watch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef I2C_H_
#define I2C_H_

#define SDA			C4
#define SCL			C5

#if COMPILE_I2C

#define I2C_NACK	false
#define I2C_ACK		true
#define I2C_W		0
#define I2C_R		1

void i2c_init(void);
void i2c_resetState(void);
void i2c_start(void);
void i2c_stop(void);
bool i2c_stop_error(void);
bool i2c_write(byte);
bool i2c_read(byte*, bool);

#else

#define i2c_init()\
	power_twi_disable();\
	pinPullup(SDA, PU_EN);\
	pinPullup(SCL, PU_EN);

#endif

#endif /* I2C_H_ */
