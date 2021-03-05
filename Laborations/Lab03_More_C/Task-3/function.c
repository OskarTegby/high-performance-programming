#include <stdlib.h>
#include <stdio.h>

void print_int_1(int x) {
	printf("Here is the number: %d\n", x);
}

void print_int_2(int x) {
	printf("Wow, %d is really an impressive number!\n", x);
}

int main(int argc, char const *argv[]) {
	void (*f)(int) = &print_int_1;
	(*f)(1);
	f = &print_int_2;
	(*f)(2);
	return 0;
}