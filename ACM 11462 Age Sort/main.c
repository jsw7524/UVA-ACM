#include <stdio.h>
#include <stdlib.h>
int Index[110];
int main()
{
    int N,Temp,I,J;
    while (EOF != scanf("%d",&N) )
    {
        if (N==0)
            break;

        for(I=0; I<N; I++)
        {
            scanf("%d",&Temp);
            Index [Temp]++;
        }

        I=0;
        while (Index[I]==0)I++;
        printf("%d",I);
        Index[I]--;

        for(; I<=100; I++)
        {
            for(J=Index[I]; J>0; J--)
            {
                printf(" %d",I);
            }
            Index[I]=0;
        }
        printf("\n");
    }
    return 0;
}
