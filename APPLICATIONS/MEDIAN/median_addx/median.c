/*##################################################
****************************************
Application: MEDIAN
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

int median( int n, int input[], int results[] )
{
  int A, B, C, i;

  // Zero the ends
  results[0]   = 0;
  results[n-1] = 0;
  
  //Definição de variaveis
  //==== LOOP PERFORATION ======================
   int s, gp;
   gp = 1;//grau perfuracao potencia 2(0,1,2,4,8)
   s = pow(2,gp);//grau perfuracao potencia 2^gp
  //=============================================

  // Do the filter
  //LOOP PERFORATION
  for ( i = 1; i < (n-1); i=ADDX(i,s)) {
   
    A = input[i-1];
    B = input[i];
    C = input[i+1];

    if ( A < B ) {
      if ( B < C )
        results[i] = B;
      else if ( C < A )
        results[i] = A;
      else
        results[i] = C;
    }

    else {
      if ( A < C )
        results[i] = A;
      else if ( C < B )
        results[i] = B;
      else
        results[i] = C;
    }
    printf(" %d ",results[i]);

    
  }//for
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
}//end in
