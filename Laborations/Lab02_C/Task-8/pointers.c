#include <stdio.h>

int main()
{
	int a;
	double b;
	char c;
	printf("Enter an integer, a double, and a character: ");
	scanf("%d %lf %c", &a, &b, &c);
	int *ptrA = &a;
	double *ptrB = &b;
	char *ptrC = &c;
	printf("The integer input: %d\n", a);
	printf("Its pointer address: %p\n", &ptrA);
	printf("Its memory size: %lu\n", sizeof(a));
	printf("The double input: %f\n", b);
	printf("Its pointer address: %p\n", &ptrB);
	printf("Its memory size: %lu\n", sizeof(b));
	printf("The character input: %c\n", c);
	printf("Its pointer address: %p\n", &ptrC);
	printf("Its memory size: %lu\n", sizeof(c));
}