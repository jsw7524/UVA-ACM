#include <stdio.h>
#include <stdlib.h>

unsigned int Numbers[15];
unsigned int Buffer[15];
unsigned int N,M;
unsigned long long Count;

unsigned long long GCD(unsigned long long A, unsigned long long B)
{
    if (A%B==0)
        return B;
    return GCD(B,A%B);
}

unsigned long long LCM(unsigned long long A, unsigned long long B)
{
    return A*B/GCD(A,B);
}

void Combination(int D, int Index, int MaxDepth)
{
    int I;
    unsigned long long J;
    if (D<MaxDepth)
    {
        for (I=Index;I<M;I++)
        {
            Buffer[D]=Numbers[I];
            Combination(D+1,I+1,MaxDepth);
            Buffer[D]=0;
        }
    }
    else
    {
        J=LCM(Buffer[0],1);
        for (I=1;I<MaxDepth;I++)
        {
            J=LCM(Buffer[I],J);
        }
        Count+=N/J;
    }
}
int main()
{
    int I;
    unsigned long long K;
    while (EOF!=scanf("%d %d",&N,&M))
    {
        for (I=0;I<M;I++)
            scanf("%d",&Numbers[I]);

        K=N;
        for (I=1;I<=M;I++)
        {
            Count=0;
            Combination(0,0,I);
            if (I%2==1)
                K-=Count;
            else
                K+=Count;
        }
        printf("%lld\n",K);
    }
    return 0;
}
