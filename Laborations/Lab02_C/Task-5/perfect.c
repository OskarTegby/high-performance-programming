#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	float number;
	printf("Please write a number to check: ");
	scanf("%f", &number);
	int residual = sqrt(number);

	if (sqrt(number) - (float)residual == 0.0) {
		printf("The number %f is a perfect square.\n", number);
	} else {
		printf("The number %f is not a perfect square.\n", number);
	}
}