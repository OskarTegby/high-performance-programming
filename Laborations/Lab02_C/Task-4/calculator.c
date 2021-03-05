#include <stdio.h>
#include <assert.h>

int main() {
	float n1, n2;
	char operator;
	printf("Please enter a valid expression: ");
	scanf("%f %c %f", &n1, &operator, &n2);

	switch(operator)
	{
		case '+':
			printf("The sum is %.1f.\n", n1 + n2);
			break;
		case '-':
			printf("The difference is %.1f.\n", n1 - n2);
			break;
		case '*':
			printf("The product is %.1f.\n", n1 * n2);
			break;
		case '/':
			assert(n2 != 0);
			printf("The ratio is %.1f.\n", n1 / n2);
			break;
	}
}