/*##################################################
****************************************
Application: MEDIAN
****************************************
Technique: AS - ACCEPT-SPIKEX
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

#include <stdio.h>


void median( int n, int input[], int results[] )
{
  int A, B, C, i;

  // Zero the ends
  results[0]   = 0;
  results[n-1] = 0;

  // Do the filter
  //LOOP PERFORATION
  for ( i = 1; i < (n-1); i++ ) {
   
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

}
