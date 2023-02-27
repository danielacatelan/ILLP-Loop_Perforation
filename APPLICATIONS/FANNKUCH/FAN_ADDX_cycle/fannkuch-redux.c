/* The Computer Language Benchmarks Game
 * https://salsa.debian.org/benchmarksgame-team/benchmarksgame/
 *
 * converted to C by Joseph Piché
 * from Java version by Oleg Mazurov and Isaac Gouy
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int ADDX(int i, int s);

unsigned long read_cycles(void)
{
  unsigned long cycles;
  asm volatile ("rdcycle %0" : "=r" (cycles));
  return cycles;
}


inline static int max(int a, int b)
{
    return a > b ? a : b;
}

int fannkuchredux(int n)
{
    int perm[n];
    int perm1[n];
    int count[n];
    int maxFlipsCount = 0;
    int permCount = 0;
    int checksum = 0;
    int i;
      //Definição de variaveis
  //==== LOOP PERFORATION ======================
    int s, gp;
    gp = 8;//grau perfuracao potencia 2(0,1,2,4,8)
    s = pow(2,gp);//grau perfuracao potencia 2^gp
  //=============================================
    

    for (i=0; i<n; i+=1)
        { perm1[i] = i; }
    int r = n;

    while (1) {
        while (r != 1) {
            count[r-1] = r;
            r -= 1;
        }

        for (i=0; i<n; i+=1)
           { perm[i] = perm1[i]; }
        int flipsCount = 0;
        int k;

        while ( !((k = perm[0]) == 0) ) {
            int k2 = (k+1) >> 1;
            
            //for (i=0; i<k2; i++) //LOOP PERFORATION
            for (i=0; i<k2; i=ADDX(i,s)) //LOOP PERFORATION
            {   
                int temp = perm[i]; perm[i] = perm[k-i]; perm[k-i] = temp;
        
            }
            flipsCount += 1;
        }
        
        maxFlipsCount = max(maxFlipsCount, flipsCount);
        checksum += permCount % 2 == 0 ? flipsCount : -flipsCount;

        /* Use incremental change to generate another permutation */
        while (1) {
            if (r == n) {
                printf("%d\n", checksum);
                return maxFlipsCount;
            }

            int perm0 = perm1[0];
            i = 0;
            while (i < r) {
                int j = i + 1;
                perm1[i] = perm1[j];
                i = j;
            }
            perm1[r] = perm0;
            count[r] = count[r] - 1;
            if (count[r] > 0) break;
            r++;
        }
        permCount++;
    }
}

int main(int argc, char *argv[])
{
    int n=10;// = argc > 1 ? atoi(argv[1]) : 7;
     unsigned long long begin, end;
     begin = read_cycles();
    printf("Pfannkuchen(%d) = %d\n", n, fannkuchredux(n));
    end = read_cycles();
  printf("===============\n");
  printf("begin: %u\n", abs(begin));
  printf("end: %u\n", abs(end));
  printf("total: %u\n", abs(end) - abs(begin));
  printf("===============\n");
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

