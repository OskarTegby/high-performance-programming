#include <stdlib.h>
#include <stdio.h>

int CmpDouble(const void* p1, const void* p2) {
	printf("Comparing %.1f and %.1f.\n", *(double*)p1, *(double*)p2);
	return ((*(double*)p1>*(double*)p2)-(*(double*)p1<*(double*)p2));
}

int main() {
	double arrDouble[] = { 9.3, -2.3, 1.2, -0.4, 2, 9.2, 1, 2, 0 };
	int arrDoubleLen = sizeof(arrDouble) / sizeof(double);
	qsort(arrDouble, arrDoubleLen, sizeof(double), CmpDouble);

	for ( int i = 0; i < arrDoubleLen; i++ ) {
		printf("%.1f ", arrDouble[i]);
	}
	printf("\n");

	return 0;
}