#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int CmpString(const void* p1, const void* p2) {
	printf("Comparing %s and %s.\n", *(char**)p1, *(char**)p2);
	return (strcmp(*(char**)p1, *(char**)p2));
}

int main() {
	char *arrStr[] = { "daa", "cbab", "bbbb", "bababa", "ccccc", "aaaa" };
	int arrStrLen = sizeof(arrStr) / sizeof(char *);
	qsort(arrStr, arrStrLen, sizeof(char *), CmpString);

	for ( int i = 0; i < arrStrLen; i++ ) {
		printf("%s ", arrStr[i]);
	}
	printf("\n");

	return 0;
}