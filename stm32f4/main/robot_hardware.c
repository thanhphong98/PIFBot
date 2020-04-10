#include "robot_hardware.h"

#define MOTORLEFT_START_ERR_STR         "motor left start error"
#define MOTORLEFT_STOP_ERR_STR          "motor left stop error"
#define MOTORLEFT_FORWARD_ERR_STR       "motor left forward error"
#define MOTORLEFT_BACKWARD_ERR_STR      "motor left backward error"
#define MOTORLEFT_SET_SPEED_ERR_STR     "motor left set speed error"
#define MOTORLEFT_GET_DIR_ERR_STR       "motor left get direction error"

#define MOTORRIGHT_START_ERR_STR         "motor right start error"
#define MOTORRIGHT_STOP_ERR_STR          "motor right stop error"
#define MOTORRIGHT_FORWARD_ERR_STR       "motor right forward error"
#define MOTORRIGHT_BACKWARD_ERR_STR      "motor right backward error"
#define MOTORRIGHT_SET_SPEED_ERR_STR     "motor right set speed error"
#define MOTORRIGHT_GET_DIR_ERR_STR       "motor right get direction error"

static const char* TAG = "ROBOT HARDWARE";
#define HARDWARE_CHECK(a, str, ret)  if(!(a)) {                                      \
        STM_LOGE(TAG,"%s:%d (%s):%s", __FILE__, __LINE__, __FUNCTION__, str);        \
        return (ret);                                                                \
        }

stepmotor_handle_t motor_left, motor_right;
software_resolver_handle_t resolver_left, resolver_right;
mpu9250_handle_t mpu9250_handle;
madgwick_handle_t madgwick_handle;

void robot_motor_init(void)
{
    stepmotor_config_t motorleft_cfg;
    motorleft_cfg.dir_gpio_port = MOTORLEFT_DIR_GPIO_PORT;
    motorleft_cfg.dir_gpio_num = MOTORLEFT_DIR_GPIO_NUM;
    motorleft_cfg.pulse_timer_num = MOTORLEFT_PULSE_TIMER_NUM;
    motorleft_cfg.pulse_timer_pins_pack = MOTORLEFT_PULSE_TIMER_PINSPACK;
    motorleft_cfg.pulse_timer_channel = MOTORLEFT_PULSE_TIMER_CHANNEL;
    motor_left = stepmotor_config(&motorleft_cfg);

    stepmotor_config_t motorright_cfg;
    motorright_cfg.dir_gpio_port = MOTORRIGHT_DIR_GPIO_PORT;
    motorright_cfg.dir_gpio_num = MOTORRIGHT_DIR_GPIO_NUM;
    motorright_cfg.pulse_timer_num = MOTORRIGHT_PULSE_TIMER_NUM;
    motorright_cfg.pulse_timer_pins_pack = MOTORRIGHT_PULSE_TIMER_PINSPACK;
    motorright_cfg.pulse_timer_channel = MOTORRIGHT_PULSE_TIMER_CHANNEL;
    motor_right = stepmotor_config(&motorright_cfg);

    STM_LOGI(TAG, "Configure motor success.");
}

void robot_imu_init(void)
{
    i2c_config_t i2c_cfg;
    i2c_cfg.i2c_num = IMU_I2C_NUM;
    i2c_cfg.i2c_pins_pack = IMU_I2C_PINSPACK;
    i2c_cfg.clk_speed = IMU_CLOCK_SPEED;
    i2c_config(&i2c_cfg);

    mpu9250_config_t mpu9250_cfg;
    mpu9250_cfg.afs_sel = MPU9250_AFS_SEL_8G;
    mpu9250_cfg.clksel = MPU9250_CLKSEL_AUTO;
    mpu9250_cfg.dlpf_cfg =  MPU9250_41ACEL_42GYRO_BW_HZ;
    mpu9250_cfg.fs_sel = MPU9250_FS_SEL_2000;
    mpu9250_cfg.sleep_mode = MPU9250_DISABLE_SLEEP_MODE;
    mpu9250_cfg.i2c_num = IMU_I2C_NUM;
    mpu9250_handle = mpu9250_config(&mpu9250_cfg);
    STM_LOGI(TAG, "Configure IMU success.");

    mpu9250_auto_calib(mpu9250_handle);
    STM_LOGI(TAG, "Calibrate MPU9250 success.");

    madgwick_config_t madgwick_cfg;
    madgwick_cfg.beta = MADGWICK_BETA;
    madgwick_cfg.sample_freq = MADGWICK_SAMPLE_FREQ;
    madgwick_handle = madgwick_config(&madgwick_cfg);
    STM_LOGI(TAG, "Configure Madgwick filter success");
}

void robot_encoder_init(void)
{
    software_resolver_config_t resolver_left_cfg;
    resolver_left_cfg.timer_num = MOTORLEFT_TICK_TIMER_NUM;
    resolver_left_cfg.timer_pins_pack = MOTORLEFT_TICK_TIMER_PINSPACK;
    resolver_left_cfg.max_reload = 800;
    resolver_left_cfg.counter_mode = TIMER_COUNTER_UP;
    resolver_left = software_resolver_config(&resolver_left_cfg);

    software_resolver_config_t resolver_right_cfg;
    resolver_right_cfg.timer_num = MOTORRIGHT_TICK_TIMER_NUM;
    resolver_right_cfg.timer_pins_pack = MOTORRIGHT_TICK_TIMER_PINSPACK;
    resolver_right_cfg.max_reload = 800;
    resolver_right_cfg.counter_mode = TIMER_COUNTER_UP;
    resolver_right = software_resolver_config(&resolver_right_cfg);

    STM_LOGI(TAG, "Configure resolver success");
}

stm_err_t robot_motor_left_start(void)
{
    int ret = stepmotor_start(motor_left);
    HARDWARE_CHECK(!ret, MOTORLEFT_START_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_left_stop(void)
{
    int ret = stepmotor_stop(motor_left);
    HARDWARE_CHECK(!ret, MOTORLEFT_STOP_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_left_forward(void)
{
    int ret = stepmotor_set_dir(motor_left, MOTORLEFT_DIR_FORWARD);
    HARDWARE_CHECK(!ret, MOTORLEFT_FORWARD_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_left_backward(void)
{
    int ret = stepmotor_set_dir(motor_left, MOTORLEFT_DIR_BACKWARD);
    HARDWARE_CHECK(!ret, MOTORLEFT_BACKWARD_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_left_set_speed(float speed)
{
    int ret = stepmotor_set_pwm_freq(motor_left, (uint32_t)(speed * VEL2FREQ));
    HARDWARE_CHECK(!ret, MOTORLEFT_SET_SPEED_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_right_start(void)
{
    int ret = stepmotor_start(motor_right);
    HARDWARE_CHECK(!ret, MOTORRIGHT_START_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_right_stop(void)
{
    int ret = stepmotor_stop(motor_right);
    HARDWARE_CHECK(!ret, MOTORRIGHT_STOP_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_right_forward(void)
{
    int ret = stepmotor_set_dir(motor_right, MOTORRIGHT_DIR_FORWARD);
    HARDWARE_CHECK(!ret, MOTORRIGHT_FORWARD_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_right_backward(void)
{
    int ret = stepmotor_set_dir(motor_right, MOTORRIGHT_DIR_BACKWARD);
    HARDWARE_CHECK(!ret, MOTORRIGHT_BACKWARD_ERR_STR, STM_FAIL);

    return STM_OK;
}

stm_err_t robot_motor_right_set_speed(float speed)
{
    int ret = stepmotor_set_pwm_freq(motor_right, (uint32_t)(speed * VEL2FREQ));
    HARDWARE_CHECK(!ret, MOTORRIGHT_SET_SPEED_ERR_STR, STM_FAIL);

    return STM_OK;
}














