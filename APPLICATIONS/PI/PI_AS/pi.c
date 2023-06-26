/*##################################################
****************************************
Application: PI
****************************************
Technique: AS - ACCEPT-SPIKEX
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

#include <enerc.h>
#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#define SEED 1


int main() 
{
 srand( SEED );
 int i, count, n=3000;
 double x,y,z,pi;

 count = 0;

 for(i = 0; i < n; i++) //Loop Perforation
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
 printf("\n-> pi = %.5g", pi);

 return(0);
}
