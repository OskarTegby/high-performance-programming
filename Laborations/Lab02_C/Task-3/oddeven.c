#include <stdio.h>

int main() {
	int a, b;
	printf("Enter the first number: ");
	scanf("%d", &a);
	printf("Enter the second number: ");
	scanf("%d", &b);

	if (a % 2 == 0 && b % 2 == 0) {
		printf("Their sum is %d\n", a + b);
	} else {
		printf("Their product is %d\n", a * b);
	}
}