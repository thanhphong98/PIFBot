/* Includes ------------------------------------------------------------------*/
#include "stdlib.h"

#include "include/tb6560.h"

/* Internal define -----------------------------------------------------------*/


/* Internal typedef ----------------------------------------------------------*/


/* Internal variable ---------------------------------------------------------*/
typedef struct tb6560 {
	pin_clk_t 			*pin_clk;
	pin_dir_t 			*pin_dir;
	tb6560_micro_step_t micro_step_div;
	uint8_t				dir;
	uint16_t 			speed;
} tb6560_t;

/* Internal function ---------------------------------------------------------*/
static int tb6560_cleanup(tb6560_handle_t handle);

/* External function ---------------------------------------------------------*/
tb6560_handle_t tb6560_init(tb6560_config_t *config)
{
	tb6560_handle_t handle;
	if ( (handle          = calloc(1, sizeof(tb6560_t)))   &&
	     (handle->pin_clk = calloc(1, sizeof(pin_clk_t)))  &&
	     (handle->pin_dir = calloc(1, sizeof(pin_dir_t)))  == NULL)
	{
		tb6560_cleanup(handle);
		return -1;
	}

	handle->pin_clk = (pin_clk_t *)pwm_init(&config->pin_clk);
	handle->pin_dir = (pin_dir_t *)gpio_output_init(&config->pin_dir);
	handle->micro_step_div = config->micro_step_div;
	handle->dir = 0;
	handle->speed;

	return handle;
}

int tb6560_start(tb6560_handle_t handle)
{
	pwm_start((pwm_handle_t *)handle->pin_clk);

	return 0;
}

int tb6560_stop(tb6560_handle_t handle)
{
	pwm_stop((pwm_handle_t *)handle->pin_clk);

	return 0;
}

int tb6560_set_dir(tb6560_handle_t handle, uint8_t dir)
{
	gpio_set_level((gpio_handle_t *)handle->pin_dir,dir);

	return 0;
}

int tb6560_cleanup(tb6560_handle_t handle)
{
	free(handle->pin_clk);
	free(handle->pin_dir);
	free(handle);

	return 0;
}

int tb6560_deinit(tb6560_handle_t handle)
{
	pwm_deinit((pwm_handle_t *)handle->pin_clk);
	tb6560_cleanup(handle);

	return 0;
}
