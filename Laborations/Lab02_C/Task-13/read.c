#include <stdlib.h>
#include <stdio.h>

int main() {
	char c;
	FILE *fptr;

	// Open the file
	fptr = fopen("data.txt", "r");
	if (fptr == NULL) {
		printf("Cannot open the file.\n");
		exit(0);
	}

	// Print the contents of the file
	c = fgetc(fptr);
	while (c != EOF) {
		printf("%c", c);
		c = fgetc(fptr);
	}
	printf("\n");
	fclose(fptr);
	
	return 0;
}