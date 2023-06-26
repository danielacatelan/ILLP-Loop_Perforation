/*##################################################
****************************************
Application: MEDIAN
****************************************
Technique: BL - baseline
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

#include "median.h"

//--------------------------------------------------------------------------
// Input/Reference Data

#include "dataset1.h"

//--------------------------------------------------------------------------
// Main

int main( int argc, char* argv[] )
{
  int results_data[DATA_SIZE];
  median( DATA_SIZE, input_data, results_data );

  return 0;
}
