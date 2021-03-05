#include <stdio.h>

int main() {
	int a, b;
	printf("Set the height variable: ");
	scanf("%d", &a); // Height
	printf("Set the width variable: ");
	scanf("%d", &b); // Width

	for (int i = 0; i < b; ++i)
	{
		printf("*");
	}
	printf("\n");
	

	for (int i = 0; i < a-2; ++i)
	{
		printf("*");
		for (int j = 1; j < b-1; ++j)
		{
			printf(".");
		}
		printf("*\n");
	}
	

	for (int i = 0; i < b; ++i)
	{
		printf("*");
	}
	printf("\n");
}