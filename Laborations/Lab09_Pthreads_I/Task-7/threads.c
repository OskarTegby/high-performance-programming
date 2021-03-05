#include <pthread.h>
#include <stdio.h>

void* empty(void* arg) {
	printf("This is a message from the thread created by a thread.\n");
	return NULL;
}

void* thread_function(void* arg) {
	printf("Two more threads are created.\n");
	pthread_t thread1, thread2;
	pthread_create(&thread1, NULL, empty, NULL);
	pthread_create(&thread2, NULL, empty, NULL);
	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	return NULL;
}

int main(int argc, char const *argv[])
{
	printf("The main function is now running.\n");
	pthread_t thread1, thread2;
	printf("Another thread is created.\n");
	pthread_create(&thread1, NULL, thread_function, NULL);
	printf("Another thread is created.\n");
	pthread_create(&thread2, NULL, thread_function, NULL);
	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);

	return 0;
}