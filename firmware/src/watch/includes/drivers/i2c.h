/*
 * Project: Digital Wristwatch
 * Author: Zak Kemble, contact@zakkemble.co.uk
 * Copyright: (C) 2013 by Zak Kemble
 * License: GNU GPL v3 (see License.txt)
 * Web: http://blog.zakkemble.co.uk/diy-digital-wristwatch/
 */

#ifndef I2C_H_
#define I2C_H_

#include "typedefs.h"

#define I2C_NACK	false
#define I2C_ACK		true

void i2c_init(void);
void i2c_resetState(void);
void i2c_start(void);
void i2c_stop(void);
bool i2c_stop_error(void);
bool i2c_write(byte);
bool i2c_read(byte*, bool);

#endif /* I2C_H_ */