#include <stdlib.h>
#include <stdio.h>

int print_array(int* arr, int n);

int main() {
	int* arr;
	int n;
	printf("Set the size of the array: ");
	scanf("%d", &n);
	arr = (int *)malloc(n*sizeof(int));
	for (int i = 0; i < n; ++i) {
		arr[i] = rand() % 100; // Random number from 0 to 99
	}
	printf("Here are the random numbers!\n");
	print_array(arr, n);
	return 0;
}

int print_array(int* arr, int n) {
	for (int i = 0; i < n; i++) {
		printf("%d\t", arr[i]);
	}
	printf("\n");
	return 0;
}