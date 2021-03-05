#include <stdlib.h>
#include <stdio.h>

int swap_nums(int *a, int *b);
int swap_pointers(char **s1, char **s2);

int main() {
	int a, b;
	char *s1, *s2;
	a = 3, b = 4;
	swap_nums(&a, &b);
	printf("a = %d, b = %d\n", a, b);

	s1 = "second", s2 = "first";
	swap_pointers(&s1, &s2);
	printf("s1 = %s, s2 = %s\n", s1, s2);
	return 0;
}

int swap_nums(int *a, int *b) {
	int *c = a;
	a = b;
	b = c;
	return 0;
}

int swap_pointers(char **s1, char **s2) {
	char *s = *s1;
	*s1 = *s2;
	*s2 = s;
	return 0;
}