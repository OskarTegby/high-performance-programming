#include <stdio.h>
#include <stdlib.h>

struct foo1 { // = 9 bytes (Actually 16)
    char *p;			// 8 bytes
    char c;			// 1 byte
};

struct foo2 { // = 3 bytes (Actually 4)
    short s;			// 2 bytes
    char c;			// 1 byte
};

struct foo3 { // = 11 bytes (Actually 24)
    char c;			// 1 byte
    struct foo3inner {
        char *p;		// 8 bytes
        short s;		// 2 bytes
    } inner;
};

struct foo4 { // = 18 bytes (Actually 32. 24 are reordering)
    char *p1;       // 8 bytes
    char *p2;       // 8 bytes
    char c1;		// 1 byte
    char c2;		// 1 byte
};

int main(int argc, char** argv)
{
    printf("normal   : %lu\n",sizeof(struct foo1));
    printf("normal   : %lu\n",sizeof(struct foo2));
    printf("normal   : %lu\n",sizeof(struct foo3));
    printf("normal   : %lu\n",sizeof(struct foo4));
   return 0;
}
