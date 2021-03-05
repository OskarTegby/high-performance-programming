#include <stdlib.h>
#include <stdio.h>

int printMatrix(int** matrix, int n) {
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			if (matrix[i][j] != -1) {
				printf(" %d", matrix[i][j]);
			} else {
				printf("%d", matrix[i][j]);
			}
		}
		printf("\n");
	}
	return 0;
	printf("\n");
}

int main(int argc, char const *argv[]) {
	int n = 5;
	int **matrix = malloc(n * sizeof(&matrix));

	for (int i = 0; i < n; i++) {
		matrix[i] = malloc(n * sizeof(&matrix[i]));
	}

	for (int i = 0; i < n; i++) {
		matrix[i][i] = 0;
	}

	for (int i = 0; i < n; i++) {
		for (int j = i+1; j < n; j++) {
			matrix[i][j] = 1;
		}
	}

	for (int i = 1; i < n; i++) {
		for (int j = i+1; j <= n; j++) {
			matrix[n-i][n-j] = -1;
		}
	}

	printMatrix(matrix, n);

	return 0;
}