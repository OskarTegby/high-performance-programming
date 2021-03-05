#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <time.h>

int print_array(int* list, int n);

int main() {
	int flag;
	int check;
	int add;
	int m = 1;
	int n;
	time_t t;

	printf("Set the amount of numbers: ");
	scanf("%d", &n);
	int* list = malloc(n * sizeof(&list));
	int* primes = malloc(m * sizeof(&primes));

	srand((unsigned) time(&t));
	for (int i = 0; i < n; ++i) {
		list[i] = rand() % 100 + 1; // Random number from 0 to 99
	}

	printf("The generated numbers: ");
	print_array(list, n);

	for (int i = 0; i < n; i++) {
		flag = 1;
		check = sqrt(list[i]) + 1;
		for (int j = 2; j <= check; j++) {
			if (list[i] % j == 0) {
				flag = 0;
				break;
			}
		}
		if (flag == 1 && list[i] != 1) {
			for (int k = 0; k < m; k++) {
				if (primes[k] == list[i]) {
					flag = 0;
				}
			}
			if (flag == 1) {
				primes[m-1] = list[i];
				m++;
				primes = realloc(primes, m * sizeof(&primes));
			}
		}
    }
    printf("The prime numers: ");
   	print_array(primes, m-1);

   	int* new = malloc((n-(m-1)) * sizeof(&new));
   	int* skip = malloc(sizeof(&skip));
   	int index = 0;

   	for (int i = 0; i < n; i++) {
   		add = 1;
   		for (int j = 0; j < m-1; j++) {
   			if (list[i] == primes[j]) {
   				add = 0;
   			}
   		}
   		if (add == 1) {
   			new[index] = list[i];
   			index++;
   		}
   	}

   	printf("With the prime numbers removed: ");
   	print_array(new, index);

	return 0;
}

int print_array(int* list, int n) {
	for (int i = 0; i < n; i++) {
		printf("%d ", list[i]);
	}
	printf("\n");
	return 0;
}