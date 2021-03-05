#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int printMatrix(int** matrix, int n) {
	for (int i = 0; i < n; i++) {
		for (int j = 0; j <= i; j++) {
			printf("%d ", matrix[i][j]);
		}
		printf("\n");
	}
	return 0;
	printf("\n");
}

int main(int argc, char const *argv[]) {
	int n = atoi(argv[1]);
	int **matrix = malloc(n * sizeof(&matrix));
	for (int i = 0; i < n; i++) {
		matrix[i] = malloc(n * sizeof(&matrix[i]));
	}

	matrix[0][0] = 1;
	for (int i = 1; i < n; i++) {
		matrix[i][0] = 1;
		for (int j = 1; j < n; j++) {
			matrix[i][j] = matrix[i-1][j] + matrix[i-1][j-1];
		}
	}
	printMatrix(matrix, n);
	return 0;
}
