#include <stdio.h>
#include <stdlib.h>

int main() {
	printf("Enter the number to be examined: ");
	int number;
	scanf("%d", &number);

	while (number > 10) {
		number /= 10;
	}

	printf("The first digit is %d\n", number);
}