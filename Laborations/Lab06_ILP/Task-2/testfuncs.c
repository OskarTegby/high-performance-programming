#include "testfuncs.h"

void f_std(const double * __restrict a, 
	   const double * __restrict b, 
	   double * __restrict c, int N) {
  int i;
  int counter = 0;
  double x = 0;
  for(i = 0; i < N; i++) {
    if(counter == 4) {
      x += 0.1;
      counter = 0;
    }
    c[i] = a[i]*a[i] + b[i] + x;
    counter++;
  }
}

void f_opt(const double * __restrict a, 
	   const double * __restrict b, 
	   double * __restrict c, int N) {
  int i;
  double x = 0;

  c[0] = a[0]*a[0] + b[0] + x;
  c[1] = a[1]*a[1] + b[1] + x;
  c[2] = a[2]*a[2] + b[2] + x;
  c[3] = a[3]*a[3] + b[3] + x;

  for(i = 4; i < N; i+=4) {
    x += 0.1;
    c[i] = a[i]*a[i] + b[i] + x;
    c[i+1] = a[i+1]*a[i+1] + b[i+1] + x;
    c[i+2] = a[i+2]*a[i+2] + b[i+2] + x;
    c[i+3] = a[i+3]*a[i+3] + b[i+3] + x;
  }
}

