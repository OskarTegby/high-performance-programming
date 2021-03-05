#include <stdlib.h>
#include <stdio.h>

int main(int argc, char const *argv[]) {
	float epsilon = 1;
	float plus;
	for (int i = 0; i < 25; i++) {
		epsilon *= 0.5;
		printf("Epsilon is now %f\n", epsilon);
		plus = epsilon + 1;
		if (plus > 1) {
			printf("1+epsilon is greater than one. It is %f.\n", plus);
		} else {
			printf("1+epsilon is one.\n");
		}

	}
	return 0;
}