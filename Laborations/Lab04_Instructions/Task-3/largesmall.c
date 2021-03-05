#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main(int argc, char const *argv[]) {
	float d = 3;
	int i = 0;

	while (isfinite(d) == 1) {
		d *= 2;
		i += 1;
		printf("d is %e after iteration %d.\n", d, i);
	}
	return 0;
}