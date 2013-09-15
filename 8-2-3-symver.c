// 8.2.3

asm(".symver add, add@VERS_1.1");

int add(int a, int b) {
	return a + b;
}

asm(".symver old_printf, printf@VERS_1.1");
asm(".symver new_printf, printf@VERS_1.2");

int old_printf() {
	return 0;
}
int new_printf() {
	return 1;
}
