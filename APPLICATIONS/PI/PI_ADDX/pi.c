/**
 *
 * Author     : Adrian Statescu mergesortv@gmail.com http://adrianstatescu.com
 *
 * Description: C Program to compute PI using a Monte Carlo Method.
 *
 * MIT License 
 *
 */
//#include <enerc.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#define SEED 1


int ADDX(int i, int s);

int main() 
{
 srand( SEED );
 int i, count, n=3000;
 double x,y,z,pi;

 //scanf("%d", &n);

 count = 0;
 //Definição de variaveis
  //==== LOOP PERFORATION ======================
  int s, gp;
  gp = 8;//grau perfuracao potencia 2(0,1,2,4,8)
  s = pow(2,gp);//grau perfuracao potencia 2^gp
  //=============================================
 //for(i = 0; i < n; i++) //LOOP PERFORATION
 for(i = 0; i < n; i=ADDX(i,s))
 {
     x = (double)rand() / RAND_MAX;
     y = (double)rand() / RAND_MAX;
     z = x * x + y * y;
     if( z <= 1 ) 
     {
       count++;
     }
	
 }//close for

 pi = (double) count / n * 4;
 printf("\n-> pi=%.5g", pi);

 return(0);
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
