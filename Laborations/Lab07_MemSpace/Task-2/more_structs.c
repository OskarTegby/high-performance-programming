#include <stdio.h>

typedef struct { // = 5 bytes (0 bytes padding)
  char c1; // 1 byte
  char c2; // 1 byte
  char c3; // 1 byte
  char c4; // 1 byte
  char c5; // 1 byte
} A;

typedef struct { // > 8 bytes (3 bytes padding)
  int i; // 4+3 bytes
  char c5; // 1 byte
} B;

typedef struct { // = 32 bytes (12 bytes padding)
  char c1; // 1 byte
  int i1; // 4+3 bytes
  char c2; // 1 byte
  int i2; // 4+3 bytes
  char c3; // 1 byte
  int i3; // 4+3 bytes
  char c4; // 1 byte
  int i4; // 4+3 bytes
} C;

typedef struct { // = 20 bytes (0 bytes padding)
  int i1; // 4 bytes
  int i2; // 4 bytes
  int i3; // 4 bytes
  int i4; // 4 bytes
  char c1; // 1 byte
  char c2; // 1 byte
  char c3; // 1 byte
  char c4; // 1 byte
} D;

int main() {
  printf("sizeof(A) = %lu\n", sizeof(A));
  printf("sizeof(B) = %lu\n", sizeof(B));
  printf("sizeof(C) = %lu\n", sizeof(C));
  printf("sizeof(D) = %lu\n", sizeof(D));
  // Investigate the data layout in a C struct
  // First we create a buffer with the same size as C, and set it to zero
  int sz = sizeof(C);
  char buf[sz];
  for(int i = 0; i < sz; i++)
    buf[i] = 0;
  // Now create a pointer to C and make it point to the zero-filled buffer
  C* ptr = (C*)buf;
  // Now set member values for the struct pointed to by C (that uses the same memory as buf)
  ptr->c1 = 22;
  ptr->i1 = -1;
  ptr->c2 = 33;
  ptr->i2 = -1;
  ptr->c3 = 44;
  ptr->i3 = -1;
  ptr->c4 = 55;
  ptr->i4 = -1;
  // Now print the contents of buf
  printf("buf contents:\n"); // It prints the information and its padding.
  for(int i = 0; i < sz; i++)
    printf("%4d\n", buf[i]);
  return 0;
}
