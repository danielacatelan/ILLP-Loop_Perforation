/*##################################################
****************************************
Application: FLOYD
****************************************
Technique: ILLP - Instruction-Level Loop Perforation
*****************************************
Date: 06/26/2023
Author: Daniela L. Catelan
UFMS - PhD in Computer Science
####################################################*/

    #include<stdio.h>
    #include<stdlib.h>
    #include <math.h>
    


    int ADDX(int i, int s);

    #define V 18 // Number of vertices in the graph

    #define INF 99999
    
    void printSolution(int dist[][V]);

    void floydWarshell(int graph[][V])
    {
        int dist[V][V], i, j, k;
       
        
        //Definição de variaveis
        //==== LOOP PERFORATION ======================
        int s, gp;
        gp = 8;//grau perfuracao potencia 2(0,1,2,4,8)
        s = pow(2,gp);//grau perfuracao potencia 2^gp
        //=============================================
        
        for (i = 0; i < V; i++){
            for (j = 0; j < V; j++){
                dist[i][j] = graph[i][j];
            }
        }
        
        for (k = 0; k < V; k++)//LP - ARTIGO 18x
        {   
            for (i = 0; i < V; i++) //324x
            {   
                for (j = 0; j < V; j=ADDX(j,s))//5832x LP HOT
                {   
                    if (dist[i][k] + dist[k][j] < dist[i][j])
                    {
                        dist[i][j] = dist[i][k] + dist[k][j];
                    }    
                }
  
            }
        }

        printSolution(dist);
    }//close floydWarshell

     void printSolution(int dist[][V])
    {
       int matrix_result[V][V] = {     
           {0,5,7,14,16,10,7,5,3,5,7,9,9,10,7,10,12,17},
           {5,0,2,9,11,8,5,10,8,10,12,13,12,8,11,5,7,2},
           {7,2,0,7,9,6,3,12,10,12,14,15,14,10,13,7,9,12},
	   {14,9,7,0,2,8,10,14,16,19,21,22,21,17,20,14,10,5},
	   {16,11,9,2,0,6,9,12,14,18,23,24,23,19,22,16,12,7},
	   {10,8,6,8,6,0,3,6,8,12,17,19,19,16,17,13,15,13},
	   {7,5,3,10,9,3,0,9,10,12,14,16,16,13,14,10,12,15},
	   {5,10,12,14,12,6,9,0,2,6,12,14,14,15,12,15,17,19},
	   {3,8,10,16,14,8,10,2,0,4,10,12,12,13,10,13,15,20},
	   {5,10,12,19,21,15,12,10,8,10,12,14,14,15,12,15,17,22},
	   {7,12,14,21,23,17,14,12,10,6,0,3,2, 6,5,9,13,18},
	   {9,13,15,22,24,19,16,14,12,9,3,0,3,5,2, 8,12,17},
	   {9,12,14,21,23,19,16,14,12,8,2,3,0,4,5,7,11,16},
  	   {10,8,10,17,19,16,13,15,13,12,6,5,4,0,3,3,7,12},
	   {7,11,13,20,22,17,14,12,10,11,5,2, 5,3,0,6,10,15},
	   {10,5,7,14,16,13,10,15,13,15,9,8,7,3,6,0,4,9},
	   {12,7,9,10,12,15,12,17,15,17,13,12,11,7,10,4,0,5},
	   {17,12,12,5,7,13,15,19,20,22,18,17,16,12,15,9,5,0} };
        /*printf("Following matrix shows the shortest distances"
            " between every pair of vertices \n");*/
        int i, j, cont=1;
        for (i = 0; i < V; i++)
        {
            for (j = 0; j < V; j++)
            {
                if (dist[i][j] == matrix_result[i][j])
                        { 
                          cont++;                      
                        }
                
                /*if (dist[i][j] == INF)
                 {
                    printf("%7s", "INF");
                 }    
                else
                  {
                    printf("%7d", dist[i][j]);
                  } */
            }
            printf("\n");
        }
        printf("\nResult = %d\n",cont);
    }//close printSolution

    int main()
    {
        int graph[V][V] = {    
           {0, 5, INF, INF, INF, INF, 7, 7, 3, 5, 7, INF, INF, INF, 7, INF, INF, INF},
           {5, 0, 2, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 5, 7, INF},
           {INF, 2, 0, 7, INF, INF, 3, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF},
           {INF, INF, 7, 0, 2, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 5},
           {INF, INF, INF, 2, 0, 6, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF},
           {INF, INF, INF, INF, 6, 0, 3, 6, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF},
           {7, INF, 3, INF, INF, 3, 0, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF},
           {7, INF, INF, INF, INF, 6, INF, 0, 2, INF, INF, INF, INF, INF, INF, INF, INF, INF},
           {3, INF, INF, INF, INF, INF, INF, 2, 0, 4, INF, INF, INF, INF, INF, INF, INF, INF},
           {5, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF},
           {7, INF, INF, INF, INF, INF, INF, INF, INF, 6, 0, 3, 2, INF, INF, INF, INF, INF},
           {INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 3, 0, 3, INF, 2, INF, INF, INF},
           {INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 2, 3, 0, 4, INF, INF, INF, INF},   
           {INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 4, 0, 3, 3, INF, INF},
           {7, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 2, INF, 3, 0, INF, INF, INF},
           {INF, 5, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 3, INF, 0, 4, INF},
           {INF, 7, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 4, 0, 5},
           {INF, INF, INF, 5, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, INF, 5, 0}
        };


        floydWarshell(graph);

        return 0;
    }//close main


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

