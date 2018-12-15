#include "./include/libpower.h"
#include <stdio.h>

int main() {
	printf("Calc_power_r: %f\nInput volt: 10, input resistance: 8\n", calc_power_r(10, 8));
	printf("Calc_power_i: %f\nInput volt 10, input current 8\n", calc_power_i(10, 8));
}
