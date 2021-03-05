#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main() {
	float a, b, c;
	printf("Enter the first number: ");
	scanf("%f", &a);
	printf("Enter the second number: ");
	scanf("%f", &b);
	printf("Enter the third number: ");
	scanf("%f", &c);

	float largest;

	if (fabs(a) > fabs(b)) {
		largest = a;
	} else {
		largest = b;
	}

	if (fabs(largest) < fabs(c)) {
		largest = c;
	}

	printf("The largest value is %f\n", largest);
}