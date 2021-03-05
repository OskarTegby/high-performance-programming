#include <stdlib.h>
#include <stdio.h>

int main()
{
	int check, copy, remainder, reverse = 0;
	printf("Input: ");
	scanf("%d", &check);
	copy = check;

	while (check != 0) {
		remainder = check % 10; // Find the last digit
		reverse = reverse * 10 + remainder; // Compute the reverse this far.
		check /= 10; // Remove the last digit.
	}

	if (reverse == copy) {
		printf("It is a palindrome.\n");
	} else {
		printf("It is not a palindrome.\n");
	}
}