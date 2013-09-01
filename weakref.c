#include <stdio.h>
#include <pthread.h>

int pthread_create(pthread_t *, const pthread_attr_t *,
		void *(*) (void *), void *) __attribute__ ((weak));

int main() {
	if(pthread_create) {
		puts("This is multi-threaded version.");
	} else {
		puts("This is single-threaded version.");
	}
	return 0;
}
