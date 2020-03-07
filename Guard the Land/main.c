#include <stdio.h>
#include <stdlib.h>

int N,Z=1;
int A[5];
int B[5];
int X[3];
int Y[3];
int SS,WS,TS;
int main()
{
    scanf("%d",&N);
    while (N--)
    {
        SS=0;
        WS=0;
        TS=100*100;
        scanf("%d%d%d%d",&A[1],&A[2],&A[3],&A[4]);
        scanf("%d%d%d%d",&B[1],&B[2],&B[3],&B[4]);
        X[1]=(A[1]>B[1])?A[1]:B[1];
        X[2]=(A[3]>B[3])?B[3]:A[3];
        Y[1]=(A[2]>B[2])?A[2]:B[2];
        Y[2]=(A[4]>B[4])?B[4]:A[4];
        if ( X[1] < X[2] && Y[1] < Y[2]  )   /*an intersection*/
        {
            SS=(X[2]-X[1])*(Y[2]-Y[1]);
        }
        else
        {
            SS=0;
        }
        WS=(A[3]-A[1])*(A[4]-A[2])+(B[3]-B[1])*(B[4]-B[2]) - 2*SS;
        TS=100*100-WS-SS;
        printf("Night %d: %d %d %d\n",Z++,SS,WS,TS);
    }
    return 0;
}
