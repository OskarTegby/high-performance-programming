#include <pmmintrin.h> //SSE3
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>

#define VALUE 4242

typedef short int Type; 

void threshold(Type *dst, const Type *src, int len)
{
  __m128i b = _mm_set1_epi16(VALUE);

  for (int i = 0; i < len; i += 8) {
    __m128i a = _mm_load_si128((__m128i *)&src[i]);
    __m128i c = _mm_cmpgt_epi16(a, b);
    _mm_store_si128((__m128i *)&dst[i], c);
  }
}


int main()
{
  int N = 1024;
  Type dst[N], src[N];

  // fill in arrays
  int i;
  for(i = 0; i < N; i++)
    src[i] = rand()%(VALUE*2);

  printf("Call function threshold()...\n");
  threshold(dst, src, N);

  // check result  
 for(i = 0; i < N; i++)
   assert(dst[i] == ( src[i] > VALUE ? -1 : 0 ));

 printf("Great! No errors!\n");
  return 0;
}
