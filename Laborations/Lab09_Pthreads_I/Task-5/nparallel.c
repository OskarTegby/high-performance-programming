#include <pthread.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <assert.h>

struct Primes {
	int p;
	int thread;
	int primes;
	int start;
	int end;
};

void* print_thread_number(int number) {
	printf("Thread number %i is now running.\n", number);

	return NULL;
}

void* number_of_primes(void* arg) {
	int c; 
	int p = ((struct Primes*)arg)->p;
	int S = ((struct Primes*)arg)->start;
	int E = ((struct Primes*)arg)->end;
	
	print_thread_number(((struct Primes*)arg)->thread);

	for (int i = S; i <= E; i++) {
		c = 0;
		for (int j = 2; j < i; j++) {
			if (fmod((float)i, (float)j) == 0) c++;
		}
		if (c == 0) {
			p++;	
		}
	}

	((struct Primes*)arg)->primes = p;
	return NULL;
}

int main(int argc, char const *argv[])
{
	int M = atoi(argv[1]); // The largest number to check
	int N = atoi(argv[2]); // The number of threads
	assert(fmod((float)M, (float)N) == 0);
	int p = 0;
	pthread_t thread[N];
	struct Primes part[N];

	part[0].p = 1;
	part[0].thread = 1;
	part[0].start = 3;
	part[0].end = M / N;
	part[0].primes = 0;

	for (int i = 1; i < N; i++) {
		part[i].p = 0;
		part[i].thread = i + 1;
		part[i].start = i * M / N;
		part[i].end = (i + 1) * (M / N);
		part[i].primes = 0;
	} 

	for (int i = 0; i < N; i++) {
		pthread_create(&thread[i], NULL, number_of_primes, &part[i]);
	}

	for (int i = 0; i < N; i++) {
		pthread_join(thread[i], NULL);
	}

	for (int i = 0; i < N; i++) {
		p += part[i].primes;
	}

	printf("There are %i prime numbers before %i.\n", p, M);

	return 0;
}