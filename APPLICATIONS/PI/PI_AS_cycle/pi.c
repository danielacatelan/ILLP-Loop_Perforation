/**
 *
 * Author     : Adrian Statescu mergesortv@gmail.com http://adrianstatescu.com
 *
 * Description: C Program to compute PI using a Monte Carlo Method.
 *
 * MIT License 
 *
 */
#include <enerc.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#define SEED 1

unsigned long read_cycles(void)
{
  unsigned long cycles;
  asm volatile ("rdcycle %0" : "=r" (cycles));
  return cycles;
}

int main() 
{
 srand( SEED );
 int i, count, n=3000;
 double x,y,z,pi;
 //scanf("%d", &n);
 
 unsigned long long begin, end;
 begin = read_cycles();
 count = 0;
 for(i = 0; i < n; i++) 
 {
     x = (double)rand() / RAND_MAX;
     y = (double)rand() / RAND_MAX;
     z = x * x + y * y;
     if( z <= 1 ) 
     {
       count++;
     }
     
 }//close for
 end = read_cycles();
  printf("===============\n");
  printf("begin: %u\n", abs(begin));
  printf("end: %u\n", abs(end));
  printf("total: %u\n", abs(end) - abs(begin));
  printf("===============\n");
 pi = (double) count / n * 4;
 printf("\n-> pi=%.5g", pi);

 return(0);
}
