/*
 * @File description:
 * 		Step motor left:
 * 			- PA5: pulse
 * 			- PA3: direction
 * 			- PE7: tick
 * 		Step motor right:
 * 			- PA7: pulse
 * 			- PC5: direction
 * 			- PE0: tick
 * 		MPU6050:
 * 			- PB8: SCL
 * 			- PB9: SDA
 * 		UART ROS:
 * 			- PA0: TXD
 * 			- PA1: RXD
 */


#ifndef _ROBOT_HARDWARE_H_
#define _ROBOT_HARDWARE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "../../stm32f4_library/driver/include/timer.h"
#include "../../stm32f4_library/driver/include/i2c.h"
#include "../../stm32f4_library/driver/include/gpio.h"
#include "../../stm32f4_library/driver/include/uart.h"
#include "../../stm32f4_library/imu/include/mpu6050.h"
#include "../../stm32f4_library/motor/include/step_motor.h"
#include "../../stm32f4_library/motor/include/encoder.h"

#define PI               	3.14159265359

/*
 * Step motor direction index.
 */
#define MOTORLEFT_FORWARD		0
#define MOTORLEFT_BACKWARD		1
#define MOTORRIGHT_FORWARD		1
#define MOTORRIGHT_BACKWARD		0

/*
 * Robot parameters
 */
#define WHEEL_RADIUS                0.033       /*!< Wheel radius in meter */
#define WHEEL_SEPARATION            0.165       /*!< Wheel separate distance in meter */
#define TURNING_RADIUS              0.08        /*!< Turning radius in degree */
#define ROBOT_RADIUS                0.1         /*!< Robot radius in meter    */

#define MAX_LINEAR_VELOCITY         (WHEEL_RADIUS * 2 * PI * 60 / 60)		/*!< Max linear velocity */
#define MAX_ANGULAR_VELOCITY        (MAX_LINEAR_VELOCITY / TURNING_RADIUS)	/*!< Max angular velocity */

#define MIN_LINEAR_VELOCITY         -MAX_LINEAR_VELOCITY					/*!< Min linear velocity */
#define MIN_ANGULAR_VELOCITY        -MAX_ANGULAR_VELOCITY					/*!< Min angular velocity */

/*
 * Step Driver Parameters.
 */
#define MICROSTEP_DIV               4			/*!< Step driver microstep divider */
#define NUM_PULSE_PER_ROUND         200			/*!< The number of pulse per round of motor */

/*
 * Robot Hardware.
 */
#define MOTORLEFT_PULSE_TIMER_NUM         	TIMER_NUM_1
#define MOTORLEFT_PULSE_TIMER_CHANNEL     	TIMER_CHANNEL_1
#define MOTORLEFT_PULSE_TIMER_PINSPACK    	TIMER_PINS_PACK_2
#define MOTORLEFT_DIR_GPIO_PORT         	GPIO_PORT_A
#define MOTORLEFT_DIR_GPIO_NUM          	GPIO_NUM_3
#define MOTORLEFT_TICK_TIMER_NUM			TIMER_NUM_2
#define MOTORLEFT_TICK_TIMER_PINSPACK		TIMER_PINS_PACK_2

#define MOTORRIGHT_PULSE_TIMER_NUM       	TIMER_NUM_14
#define MOTORRIGHT_PULSE_TIMER_CHANNEL    	TIMER_CHANNEL_1
#define MOTORRIGHT_PULSE_TIMER_PINSPACK   	TIMER_PINS_PACK_1
#define MOTORRIGHT_DIR_GPIO_PORT        	GPIO_PORT_C
#define MOTORRIGHT_DIR_GPIO_NUM         	GPIO_NUM_5
#define MOTORRIGHT_TICK_TIMER_NUM			TIMER_NUM_4
#define MOTORRIGHT_TICK_TIMER_PINSPACK		TIMER_PINS_PACK_1

#define MPU6050_I2C_NUM             		I2C_NUM_1
#define MPU6050_I2C_PINSPACK        		I2C_PINS_PACK_1

#define ROSSERIAL_BAUDRATE          		115200

/*
 * Robot Initial Function.
 */
void robot_motor_init(void);
void robot_imu_init(void);
void robot_rosserial_init(void);
void robot_encoder_init(void);

/*
 * Robot Control Motor Function.
 */
void robot_motor_left_forward(void);
void robot_motor_left_backward(void);
void robot_motor_left_set_speed(float speed);
void robot_motor_right_forward(void);
void robot_motor_right_backward(void);
void robot_motor_right_set_speed(float speed);

void robot_motor_left_start(void);
void robot_motor_left_stop(void);
void robot_motor_right_start(void);
void robot_motor_right_stop(void);

uint32_t robot_encoder_left_get_tick(void);
uint32_t robot_encoder_right_get_tick(void);
void robot_encoder_left_reset(void);
void robot_encoder_right_reset(void);

bool robot_motor_left_get_dir(void);
bool robot_motor_right_get_dir(void);

#ifdef __cplusplus
}
#endif

#endif /* _ROBOT_HARDWARE_H_ */
