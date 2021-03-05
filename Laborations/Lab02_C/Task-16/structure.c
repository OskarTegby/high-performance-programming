#include <stdlib.h>
#include <stdio.h>

typedef struct product {
	char name[50];
	double price;
} product_t;

int main(int argc, char const *argv[]) {
	char name[50];
	double price;
	int n;
	FILE *fptr;
	
	// Open the file
	fptr = fopen(argv[1], "r");
	if (fptr == NULL) {
		printf("Cannot open the file.\n");
		return 1;
	}

	fscanf(fptr, "%d", &n);
	product_t* arr_of_prod = malloc(n * sizeof(product_t));

	// Print the contents of the file
	for (int i = 0; i < n; i++) {
		fscanf(fptr, "%s %lf", &name, &price);
		for (int j = 0; j < 50; j++) {
			arr_of_prod[i].name[j] = name[j];
		}
		arr_of_prod[i].price = price;
	}

	for (int i = 0; i < n; i++) {
		printf("%s %lf\n", arr_of_prod[i].name, arr_of_prod[i].price);
	}

	return 0;
}