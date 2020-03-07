#include <stdio.h>
#include <stdlib.h>

int main()
{
    int N,I,J,K,Max;
    while (scanf("%d",&N))
    {
        if (N==0)
            break;
        K=0;
        Max=0;
        for (I=0;I<N;I++)
        {
            scanf("%d",&J);
            K+=J;
            if (K<=0)
            {
                K=0;
            }
            if (Max < K)
            {
                Max=K;
            }
        }
        if (Max==0)
            printf("Losing streak.\n");
        else
            printf("The maximum winning streak is %d.\n",Max);
    }
    return 0;
}
