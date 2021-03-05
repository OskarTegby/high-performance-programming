#include <stdlib.h>
#include <stdio.h>

#define FAST 1

/* From A. Fog: Example 14.4. */

int foo(int j, int size);

int main(int argc, char **argv)
{
    const int size = 16; 
    const int numiters = 100000000;
    int i,j;
    double list[size];
    for(j = 0; j<numiters; j++)
    {
       i = (unsigned)foo(j,size);
#if FAST
       if ((int unsigned)i >= (int unsigned)size)) 
/*
if (A OR B) <=> if not(not A AND not B)
A = “i < 0”, B = “i >= size”
not A = “i >= 0”, not B = “i < size”
if (i < 0 OR >= size) <=>
if ((i >= 0 AND i < size) == false) <=> (Set i to unsigned int)
if ((int unsigned)i < (int unsigned)size) == false) <=> (not(not A) == A)
if ((int unsigned)i >= (int unsigned)size)) <=>
*/
       {
          printf("Error: Index out of range");
       }
#else
       if (i < 0 || i >= size) 
       {
          printf("Error: Index out of range");
       }
#endif
       else {
          list[i] += 1.0;
       }
    }
    return 0;
}

/* Pretend you don't know the definition of this function. */
int foo(int j, int size)
{
	return j%size;
}
