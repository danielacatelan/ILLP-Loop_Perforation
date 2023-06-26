/*##################################################
****************************************
Application: CONV2D-NORMAL
****************************************
Technique: ILLP - Instruction-Level Loop Perforation
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

#include <math.h>
#include <stdio.h>
#define K_SIZE 10
#define I_SIZE 10

int ADDX(int i, int s);

void convolve2D(int* in, int* out, int dataSizeX, int dataSizeY,
                    int* kernel, int kernelSizeX, int kernelSizeY)
{
    int i, j, m, n, mm, nn;
    int kCenterX, kCenterY;                         // center index of kernel
    int sum;                                      // temp accumulation buffer
    int rowIndex, colIndex;

    int cont_acc=0, result_acc[100] = {483969800,	742920313,	684463254,	923540819,	974400611,	826100176,	729637970,	625402259,	521807540,	490546000,	573292513,	684694865,	828484003,	865337072,	965225513,	853375574,	751109150,	621278440,	545880960,	562534855,	498677141,	790740020,	762342701,	852863623,	996925735,	813190616,	736808102,	622568384,	633571224,	481938362,	532039467,	710455920,	712096654,	895268575,	967039344,	922526645,	737412832,	707656110,	587508853,	443831240,	557162275,	679009682,	772164424,	850980235,	1048049643,	813557809,	768629188,	701499119,	601072429,	447020779,	430586867,	618283270,	611176860,	760752724,	775219162,	721749190,	610306375,	569560594,	437218375,	403240378,	373111652,	464029542,	529144196,	486674267,	639561853,	584289014,	506621687,	393911515,	354822043,	406595338,	232505766,	356902444,	269213722,	355408879,	505500669,	386206012,	294332976,	281237554,	329574802,	252059028,	155384502,	150289511,	164096428,	251124261,	301279599,	205482581,	192954884,	228783944,	149219926,	70064422,	68919044,	74063429,	69953688,	94349516,	88557869,	33043800,	86260239,	64922154,	0,	0 };
    //Definição de variaveis
  //==== LOOP PERFORATION ======================
   int s, gp;
   gp = 8;//grau perfuracao potencia 2(0,1,2,4,8)
   s = pow(2,gp);//grau perfuracao potencia 2^gp
  //=============================================
    
    
     // find center position of kernel (half of kernel size)
    kCenterX = kernelSizeX >> 1;
    kCenterY = kernelSizeY >> 1;

    //for(i=0; i < dataSizeY; ++i)// LP                // rows
    for(i=0; i < dataSizeY; i=ADDX(i,s))// LP 
    {//for 1
        for(j=0; j < dataSizeX; ++j)            // columns
        {//for 2
            sum = 0;                            // init to 0 before sum
            for(m=0; m < kernelSizeY; ++m)      // kernel rows
            {//for 3
                mm = kernelSizeY - 1 - m;       // row index of flipped kernel

                for(n=0; n < kernelSizeX; ++n)  // kernel columns
                {//for 4
                    nn = kernelSizeX - 1 - n;   // column index of flipped kernel

                    // index of input signal, used for checking boundary
                    rowIndex = i + (kCenterY - mm);
                    colIndex = j + (kCenterX - nn);

                    // ignore input samples which are out of bound
                    if(rowIndex >= 0 && rowIndex < dataSizeY && colIndex >= 0 && colIndex < dataSizeX) {
                        sum += in[dataSizeX * rowIndex + colIndex] * kernel[kernelSizeX * mm + nn];
                                          
                    }
                }//for 4
            }//for 3
            out[dataSizeX * i + j] = sum;
            //printf("sum[%d] => %d\n", (dataSizeX * i + j), sum);
            if (sum == result_acc[dataSizeX * i + j])
            { 
              cont_acc++;
            }  
            
            //printf("-----------------------------------\n");
        }//for 2
    }//for 1
    printf("Accuracy=%d\n",cont_acc);
}

//convolution algorithm
int main(int argc, char* argv[])
{
  
  int kernel[K_SIZE * K_SIZE] = {2927,1675,7354,6828,85,5492,81,6471,7838,2927,1675,7354,6828,85,5492,81,6471,7838,2927,1675,7354,6828,85,5492,81,6471,7838,2927,1675,7354,6828,85,5492,81,6471,7838,2927,1675,7354,6828,85,5492,81,6471,7838,2927,1675,7354,6828,85,5492,81,6471,7838};

  int image[I_SIZE * I_SIZE] = {710,9873,3230,2505,3524,774,8803,1859,2009,701,4748,6830,3284,4372,8433,2034,6618,3117,2511,4197,5080,4882,690,4167,8283,710,9873,3230,2505,3524,774,8803,1859,2009,701,4748,6830,3284,4372,8433,2034,6618,3117,2511,4197,5080,4882,690,4167,8283,710,9873,3230,2505,3524,774,8803,1859,2009,701,4748,6830,3284,4372,8433,2034,6618,3117,2511,4197,5080,4882,690,4167,8283,710,9873,3230,2505,3524,774,8803,1859,2009,701,4748,6830,3284,4372,8433,2034,6618,3117,2511,4197,5080,4882,690,4167,8283};
  int out[I_SIZE * I_SIZE] ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};


    convolve2D(image, out, I_SIZE, I_SIZE, kernel, K_SIZE, K_SIZE);
    
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
