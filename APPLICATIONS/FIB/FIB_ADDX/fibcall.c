/*##################################################
****************************************
Application: FIBONACCI
****************************************
Technique: ILLP - Instruction-Level Loop Perforation
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

#include <stdio.h>
#include <math.h>

int ADDX(int i, int s);


unsigned long long int fib(unsigned long long int n)
{
  unsigned long long int  Fnew, Fold, temp,ans;
  int i;
  //Definição de variaveis
  //==== LOOP PERFORATION ======================
   int s, gp;
   gp = 8;//grau perfuracao potencia 2(0,1,2,4,8)
   s = pow(2,gp);//grau perfuracao potencia 2^gp
  //=============================================
    Fnew = 1;  Fold = 1;
    //for ( i = 3; i <= n; i++)//LP
    for ( i = 3; i <= n; i=ADDX(i,s))
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

int ADDX(int i, int s) // i = i + s
{  
    int ADDX;
    asm volatile
    (  //A = i + s
      "addx   %[z], %[x], %[y]\n\t"
      : [z] "=r" (ADDX)
      : [x] "r" (i), [y] "r" (s)
    );

    	//skip_factor
    	  if (ADDX <= i)  
    	  { 
    	    ADDX = i + s;

    	  }

   	return (ADDX); 
}//end int ADDX
