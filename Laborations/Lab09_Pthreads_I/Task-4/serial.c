#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <pthread.h>

int main(int argc, char const *argv[]) {
	int M = atoi(argv[1]);
	int p = 1;
	int c;

	for (int i = 3; i < M; i++) {
		c = 0;
		for (int j = 2; j < i; j++) {
			if (fmod((float)i, (float)j) == 0) c++;
		}
		if (c == 0) p++;
	}

	printf("There are %i prime numbers before %i.\n", p, M);

 	return 0;
}