#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

struct Part{
  float result;
  float start;
  float end;
};

const int intervals = 500000000;
double dx = 1.0 / intervals;

void* computation(void* arg) {
  double S = ((struct Part*)arg)->start;
  double E = ((struct Part*)arg)->end;
  double sum = 0.0;
  double x;

  for (int i = S; i <= E; i++) { 
  	x = dx * (i - 0.5);
	sum += dx * 4.0 / (1.0 + x*x);
  }

  ((struct Part*)arg)->result = sum;

  return NULL;
}

int main(int argc, char *argv[]) {
  // Implement the mutex for the sum.

  double sum = 0.0;

  int N = atoi(argv[1]);
  pthread_t thread[N];
  struct Part part[N];

  for (int i = 0; i < N; i++) {  	
    part[i].result = 0;
    /* Using that we start at i / N and end at (i + 1) / N,
       and solve  x = dx * (i - 0.5) for i with these as x. */
    part[i].start = ((double)i / N) / dx + 0.5;
    part[i].end = ((double)(i + 1) / N) / dx + 0.5;
  }

  for (int i = 0; i < N; i++)
    pthread_create(&thread[i], NULL, computation, &part[i]);

  for (int i = 0; i < N; i++)
    pthread_join(thread[i], NULL);

  for (int i = 0; i < N; i++)
    sum += part[i].result;

  printf("PI is approx. %.16f\n",  sum);
  return 0;
}
