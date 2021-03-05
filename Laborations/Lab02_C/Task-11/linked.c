#include <stdlib.h>
#include <stdio.h>

int main() {
	int n = 1;
	char c;
	int* list = malloc(n * sizeof(&list));
	printf("Write the elements of the list: ");
	scanf("%c", &c);

	while ((c >= '0' && c <= '9') || c == ' ') {
		if (c == ' ') {
			n = n + 1;
			list = realloc(list, n * sizeof(&list));
		} else {
			list[n-1] = 10 * list[n-1] + c -(int)'0';
		}
		scanf("%c", &c);
	}

	for (int j = 0; j < n-1; j++) {
		printf("%d ", list[j]);
	}
	printf("\n");

	return 0;
}