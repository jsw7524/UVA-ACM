#include <stdio.h>
#include <stdlib.h>

int SnowFlakes[1000001];

int main()
{
    int TestCase=0;
    int N,SnowFlake;
    int I,J,K;
    int Start,Max;
    scanf("%d",&TestCase);

    while (TestCase--)
    {
        K=0;
        Max=0;
        Start=0;
        scanf("%d",&N);
        for (I = 0; I < N; I++)
        {
            scanf("%d",&SnowFlakes[I]);
            for (J = Start; J < I; J++)
            {
                if (SnowFlakes[J] == SnowFlakes[I])
                {
                    Start = J + 1;
                }
            }
            if (Max < I - Start  + 1)
            {
                Max = I - Start + 1;
            }
        }
        printf("%d\n", Max);
    }
    return 0;
}
