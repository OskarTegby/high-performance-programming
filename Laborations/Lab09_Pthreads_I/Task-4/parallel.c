#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <pthread.h>

struct Primes {
	int p;
	int primes;
	int start;
	int end;
};

void* number_of_primes(void* arg) {
	int c; 
	int p = ((struct Primes*)arg)->p;
	int S = ((struct Primes*)arg)->start;
	int E = ((struct Primes*)arg)->end;

	for (int i = S; i <= E; i++) {
		c = 0;
		for (int j = 2; j < i; j++) {
			if (fmod((float)i, (float)j) == 0) c++;
		}
		if (c == 0) {
			printf("%i\n", i);
			p++;	
		} 
	}

	((struct Primes*)arg)->primes = p;
	return NULL;
}

int main(int argc, char const *argv[]) {
	int M = atoi(argv[1]);
	int p = 0;

	struct Primes part1;
	struct Primes part2;

	part1.p = 1;
	part1.start = 3;
	part1.end = M/2;
	part1.primes = 0;
	part2.p = 0;
	part2.start = M/2 + 1;
	part2.end = M;
	part2.primes = 0;

	pthread_t thread1, thread2;
	pthread_create(&thread1, NULL, number_of_primes, &part1);
	pthread_create(&thread2, NULL, number_of_primes, &part2);
	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	p = part1.primes + part2.primes;
	printf("There are %i prime numbers before %i.\n", p, M);

 	return 0;
}