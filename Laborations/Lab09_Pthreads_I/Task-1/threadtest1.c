#include <stdio.h>
#include <pthread.h>

void* the_thread_func1(void* arg) {
  printf("Thread function 1 is starting to do some work.\n");
  long int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += i;
  }
  printf("The result in thread function 1 is %li.\n", sum);
  return NULL;
}

void* the_thread_func2(void* arg) {
  printf("Thread function 2 is starting to do some work.\n");
  long int sum = 0;
  for (int i = 0; i < 1000000000; i++) {
    sum += 2*i;
  }
  printf("The result in thread function 2 is %li.\n", sum);
  return NULL;
}

int main() {
  printf("This is the main() function starting.\n");

  /* Start thread. */
  pthread_t thread1;
  pthread_t thread2;
  printf("the main() function now calling pthread_create().\n");
  pthread_create(&thread1, NULL, the_thread_func1, NULL);
  pthread_create(&thread2, NULL, the_thread_func2, NULL);

  printf("This is the main() function after pthread_create()\n");

  printf("The main function is starting to do some work.\n");
  long int i;
  double sum;
  for (i = 0; i < 10000000000; i++)
    sum += 1e-7;
  printf("The result in the main function is %lf.\n", sum);

  /* Wait for thread to finish. */
  printf("the main() function now calling pthread_join().\n");
  pthread_join(thread1, NULL);
  pthread_join(thread2, NULL);

  return 0;
}
