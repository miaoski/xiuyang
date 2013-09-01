#include <stdio.h>
#include <bfd.h>

int main() {
	const char **t = bfd_target_list();
	while(*t) {
		puts(*t++);
	}
}
