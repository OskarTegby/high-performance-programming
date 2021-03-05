#include <stdio.h>
#include <pthread.h>

int N = 15;

void* the_thread_func(void* arg) {
  int* p = malloc(N * sizeof(int));
  for (int i = 0; i < N; i++) {
    p[i] = rand() % 100;
    printf("%i ", p[i]);
  }

  // return p;
  pthread_exit(p);
}

int main() {
  printf("This is the main() function starting.\n");

  /* Start thread. */
  pthread_t thread;
  printf("the main() function now calling pthread_create().\n");
  if(pthread_create(&thread, NULL, the_thread_func, NULL) != 0) {
    printf("ERROR: pthread_create failed.\n");
    return -1;
  }

  printf("This is the main() function after pthread_create()\n");

  int* ptr;

  /* Wait for thread to finish. */
  printf("the main() function now calling pthread_join().\n");
  if(pthread_join(thread, &ptr) != 0) {
    printf("ERROR: pthread_join failed.\n");
    return -1;
  }

  for (int i = 0; i < N; i++) {
    printf("%i ", ptr[i]);
  }

  return 0;
}
