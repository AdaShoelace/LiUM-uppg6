#include "../include/libpower.h"
#include <stdio.h>
#include <math.h>


float calc_power_r(float volt, float resistance) {
	return (float) pow((double) volt, 2) / resistance;
}

float calc_power_i(float volt, float current) {
	return volt * current;
}

