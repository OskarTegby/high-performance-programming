#include <stdio.h>
#include <ctype.h>

int main(int argc, char const *argv[]) {
	FILE *fptrr;
	FILE *fptrw;
	char c, d;

	fptrr = fopen(argv[1], "r");
	if (fptrr == NULL) {
		printf("Invalid file name to read from. Cannot open the file.\n");
		return 1;
	}

	fptrw = fopen(argv[2], "w");
	if (fptrw == NULL) {
		printf("Invalid file name to write to. Cannot open the file.\n");
		return 1;
	}

	c = fgetc(fptrr);
	while (c != EOF) {
		// c = toupper(c);
		// if (c >= 97 && c <=122) {
		// 	c -= 32; // Convert upper to lower case.
		// }
		fputc(toupper(c), fptrw); // fputc(c, fptrw);
		c = fgetc(fptrr);
	}

	fclose(fptrr);
	fclose(fptrw);

	return 0;
}
