#include <stdio.h>
#include <pthread.h>

void* the_thread_func(void* arg) {
  double* a = (double*)arg;
  printf("This is the data: %.1f, %.1f, and %.1f.\n", a[0], a[1], a[2]);
  return NULL;
}

int main() {
  printf("This is the main() function starting.\n");

  double data_for_thread1[3];
  data_for_thread1[0] = 5.7;
  data_for_thread1[1] = 9.2;
  data_for_thread1[2] = 1.6;

  double data_for_thread2[3];
  data_for_thread2[0] = 15.7;
  data_for_thread2[1] = 19.2;
  data_for_thread2[2] = 11.6;

  /* Start thread. */
  pthread_t thread1, thread2;
  printf("the main() function now calling pthread_create().\n");
  pthread_create(&thread1, NULL, the_thread_func, data_for_thread1);
  pthread_create(&thread2, NULL, the_thread_func, data_for_thread2);

  printf("This is the main() function after pthread_create()\n");

  /* Do something here? */

  /* Wait for thread to finish. */
  printf("the main() function now calling pthread_join().\n");
  pthread_join(thread1, NULL);
  pthread_join(thread2, NULL);

  return 0;
}
