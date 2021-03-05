#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
   int i;
   int a = 1;
   int b = 2, c = 3, d = 1;
   float e = 1 / 1.33;
   float x = 0.1, y = 0.5, z = 0.33;
   printf("%d %d %d %d, %f %f %f\n", a, b, c, d, x, y, z);

   // Moved outside as they are loop invariants.
   y = z << 1; // Changed from 2 * z. 
   x = y * e; // Changed from y / 1.33.
   z = x * e; // Changed from x / 1.33.
 
   d = 16; // d = b / a = b / (b / 16) = b * 16 / b = 16   
   c = d << 1; // Changed from d * 2. 
   b = (c << 4) - c; // Changed from c * 15.
   a = b >> 4; // Changed from b / 16.
 
   for (i=0; i<50000000; i++) {}
   printf("%d %d %d %d, %f %f %f\n", a, b, c, d, x, y, z);
   return 0;
}
