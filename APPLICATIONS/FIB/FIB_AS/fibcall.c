/*##################################################
****************************************
Application: FIBONACCI
****************************************
Technique: AS - ACCEPT-SPIKEX
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

#include <stdio.h>


unsigned long long int fib(unsigned long long int n)
{
  unsigned long long int  Fnew, Fold, temp,ans;
  int i;
    Fnew = 1;  Fold = 1;
    for ( i = 3; i <= n; i++)         /* apsim_loop 1 0 */
    {
      temp = Fnew;
      Fnew = Fnew + Fold;
      Fold = temp;
    }
    ans = Fnew;
  return ans;
}

int main()
{
  unsigned long long int a;

  a = 40;
  volatile int x = fib(a);
  printf("FIB=%d\n", x);

  return 0;
}
