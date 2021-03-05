#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

int main()
{
	int n1, n2;
	printf("Enter dividend: ");
	scanf("%d", &n1);
	printf("Enter divisor: ");
	scanf("%d", &n2);

	assert(n2 != 0);
	int quotient = n1 / n2;
	int remainder = n1 % n2;
	printf("Quotient: %d\n", quotient);
	printf("Remainder: %d\n", remainder);
}