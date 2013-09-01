#include <stdio.h>

namespace myname {
	int var = 42;
}

extern "C" int _ZN6myname3varE;

int main() {
	printf("%d\n", _ZN6myname3varE);
	return 0;
}
