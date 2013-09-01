char *str = "Hello World!\n";

void print() {
	asm("movl $13, %%edx\n\t"	// length
		"movl %%eax, %%ecx\n\t"	// str
		"movl $0, %%ebx\n\t"	// STDOUT
		"movl $4, %%eax\n\t"	// write
		"int $0x80\n\t"
		:: "r" (str) : "edx", "ecx", "ebx");
}

void exit() {
	asm("movl $42, %ebx\n\t"	// exit code
		"movl $1, %eax\n\t"	// exit
		"int $0x80\n\t");
}

void nomain() {
	print();
	exit();
}
