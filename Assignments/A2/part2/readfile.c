#include <stdlib.h>
#include <stdio.h>

int main() {
	char bChar;
	int bInt;
	double bDouble;
	float bFloat;

	FILE *fptr;
	fptr = fopen("little_bin_file", "r");
	if (fptr == NULL) {
		printf("Invalid file name. Cannot open the file.\n");
		return 1;
	}

	fread(&bInt, sizeof(int), 1, fptr);
	fread(&bDouble, sizeof(double), 1, fptr);
	fread(&bChar, sizeof(char), 1, fptr);
	fread(&bFloat, sizeof(float), 1, fptr);
	printf("The integer: %d\n", bInt);
	printf("The double: %lf\n", bDouble);
	printf("The character: %c\n", bChar);
	printf("The float: %f\n", bFloat);

	fclose(fptr);
	return 0;
}