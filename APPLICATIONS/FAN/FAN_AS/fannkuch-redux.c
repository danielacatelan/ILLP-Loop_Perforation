/*##################################################
****************************************
Application: FANNKUCH-REDUX
****************************************
Technique: AS - ACCEPT-SPIKEX
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

#include <enerc.h>
#include <stdio.h>
#include <stdlib.h>

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
            for (i=0; i<k2; i++) //LOOP PERFORATION
            {   
                int temp = perm[i]; perm[i] = perm[k-i]; perm[k-i] = temp;
            }
            flipsCount += 1;
        }
        
        maxFlipsCount = max(maxFlipsCount, flipsCount);
        checksum += permCount % 2 == 0 ? flipsCount : -flipsCount;

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
    printf("Pfannkuchen(%d) = %d\n", n, fannkuchredux(n));
    return 0;
}
