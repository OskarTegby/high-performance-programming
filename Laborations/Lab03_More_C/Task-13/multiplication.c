#include <stdlib.h>
#include <stdio.h>
#include <string.h>

double** allocate(int n, int m) {
	double** matrix = calloc(n, sizeof(double*));

	for (int i = 0; i < n; i++) {
		matrix[i] = calloc(m, sizeof(double));
	}

	return matrix;
}

void print(double** matrix, int n, int m) {
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < m; j++) {
			printf("%.1f ", matrix[i][j]);
		}
		putchar('\n');	
	}
}

void fill(double** matrix, int n, int m) {
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < m; j++) {
			matrix[i][j] = 10 * (double)rand() / RAND_MAX;
		}
	}
}

void multiply(double** matrixA, double** matrixB, double** matrixR,
				int m, int n, int p) {
	double result;
	for (int i = 0; i < m; i++) {
		for (int j = 0; j < p; j++) {
			result = 0;
			for (int k = 0; k < n; k++) {
				result += matrixA[i][k] * matrixB[k][j];
			}
			matrixR[i][j] = result;
		}
	}
}

void deallocate(double** matrix, int n) {
	for (int i = 0; i < n; i++) {
		free(matrix[i]);
	}
	free(matrix);
}

int main(int argc, char const *argv[]) {
	int m = atoi(argv[1]);
	int n = atoi(argv[2]);
	int p = atoi(argv[3]);

	// Only matrices on the form (m,n) and (n,p) can be multiplied.
	double **matrixA = allocate(m, n);
	double **matrixB = allocate(n, p);
	double **matrixR = allocate(m, p);

	// Filling them with random numbers between 0.0 and 10.0.
	fill(matrixA, m, n);
	fill(matrixB, n, p);

	// Printing the input.
	/*
	printf("Matrix A:\n");
	print(matrixA, m, n);
	putchar('\n');
	printf("Matrix B:\n");
	print(matrixB, n, p);
	putchar('\n');
	*/

	// Performing the multiplication.
	multiply(matrixA, matrixB, matrixR, m, n, p); // Recall (m,n) and (n,p).

	// Printing the output.
	/*
	printf("Result from multiplying A and B (in that order):\n");
	print(matrixR, m, p);
	putchar('\n');
	*/

	deallocate(matrixA, m);
	deallocate(matrixB, n);
	deallocate(matrixR, m);
	return 0;
}
