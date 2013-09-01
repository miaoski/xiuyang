// Example 6.4.3 Maximum allocatable heap size
#include <stdio.h>
#include <stdlib.h>

unsigned long maximum = 0;

int main() {
	unsigned blockisze[] = {1024*1024, 1024, 1};
	int i, count;
	for(i = 0; i < 3; i++) {
		for(count = 1; ; count++) {
			void *block = malloc(maximum + blockisze[i] * count);
			if(block) {
				maximum += blockisze[i] * count;
				printf("Current max heap = %lu bytes (4GB = 4,294,967,296) \n", maximum);
				free(block);
			} else {
				break;
			}
		}
	}
	printf("Maximum heap size = %lu bytes\n", maximum);
}
