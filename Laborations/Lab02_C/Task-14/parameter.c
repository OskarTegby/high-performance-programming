#include <stdio.h>
#include <stdlib.h>

int main(int argc, char const *argv[])
{
	FILE *fptr;
	char c;

	fptr = fopen(argv[1], "r");
	if (fptr == NULL) {
		printf("Invalid file name. Cannot open the file.\n");
		return 1;
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