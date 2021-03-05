#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

double** allocate_matrix(int n);
void deallocate_matrix(double** theMatrix, int n);
void fill_matrix(double** theMatrix, int n);
void print_matrix(double** theMatrix, int n);
double get_min_value(double** theMatrix, int n);
double get_max_value(double** theMatrix, int n);
double get_wall_seconds();

int main() {
  int n;
  printf("\nEnter the dimension for a square matrix:");
  scanf("%d",&n);
  printf("n = %d\n", n);
  double timeBefore;
  double timeAfter;

  timeBefore = get_wall_seconds();
  double** matrixA = allocate_matrix(n);
  double** matrixB = allocate_matrix(n);
  timeAfter = get_wall_seconds();
  printf("The time for allocating the matrix is %f seconds.\n", timeAfter-timeBefore);
  
  timeBefore = get_wall_seconds();
  fill_matrix(matrixA, n);
  timeAfter = get_wall_seconds();
  printf("The time for filling the matrix is %f seconds.\n", timeAfter-timeBefore);

  timeBefore = get_wall_seconds();  
  double minValue = get_min_value(matrixA, n);
  double maxValue = get_max_value(matrixA, n);
  timeAfter = get_wall_seconds();
  printf("The time for computing the extremal values is %f seconds.\n", timeAfter-timeBefore);

  timeBefore = get_wall_seconds();  
  //print_matrix(matrixA, n);
  printf("Min value: %14.9f  Max value: %14.9f\n", minValue, maxValue);
  timeAfter = get_wall_seconds();
  printf("The time for printing the values is %f seconds.\n", timeAfter-timeBefore);

  timeBefore = get_wall_seconds();  
  deallocate_matrix(matrixA, n);
  deallocate_matrix(matrixB, n);
  timeAfter = get_wall_seconds();
  printf("The time for deallocating the matrix is %f seconds.\n", timeAfter-timeBefore);

  return 0;
}

double get_wall_seconds() {
  struct timeval tv;
  gettimeofday(&tv, NULL);
  double seconds = tv.tv_sec + (double)tv.tv_sec / 1000000;
  return seconds;
}

double** allocate_matrix(int n)
{
  double** theMatrix;
  int i;
  theMatrix = calloc(n , sizeof(double *));
  for(i = 0; i < n; i++)
    theMatrix[i] = calloc(n , sizeof(double));
  return theMatrix;
}

void deallocate_matrix(double** theMatrix, int n)
{
  int i;
  for(i = 0; i < n; i++)
    free(theMatrix[i]);
  free(theMatrix);
}

void fill_matrix(double** theMatrix, int n)
{
  int j, i;
  for(j = 0; j < n; j++)
    for(i = 0 ; i < n ; i++)
      theMatrix[i][j] = 10 * (double)rand() / RAND_MAX;
}

void print_matrix(double** theMatrix, int n)
{
  int i, j;
  for(i = 0 ; i < n; i++)
    {
      for(j = 0 ; j < n ; j++)
	printf("%2.3f " , theMatrix[i][j]);
      putchar('\n');
    }
}

double get_max_value(double** theMatrix, int n)
{
  int i, j;
  double max = 0.0;
  max = theMatrix[0][0];
  for(j = 0; j < n ; j++)
    for(i = 0 ;i < n; i++)
      if(max < theMatrix[i][j])
	max = theMatrix[i][j];
  return max;
}

double get_min_value(double** theMatrix, int n)
{
  int i, j;
  double min = 0.0;
  min = theMatrix[0][0];
  for(j = 0; j < n; j++)
    for(i = 0; i < n; i++)
      if(min > theMatrix[i][j])
	min = theMatrix[i][j];
  return min;
}
