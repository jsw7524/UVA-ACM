#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int Map[101][101];

int main()
{
    int T,N,U,V,R;
    int I,J,K,Max;
    int Case=0;
    scanf("%d",&T);
    while (T--)
    {
        scanf("%d",&N);
        Max=0;
        scanf("%d",&R);
        for (I=0; I<N; I++)
        {
            for (J=0; J<N; J++)
            {
                Map[I][J]=999999;
            }
            Map[I][I]=0;
        }
        for (I=0; I<R; I++)
        {
            scanf("%d%d",&U,&V);
            Map[U][V]=1;
            Map[V][U]=1;
        }
        scanf("%d%d",&U,&V);
        for (K=0; K<N; K++)
        {
            for (I=0; I<N; I++)
            {
                for (J=0; J<N; J++)
                {
                    if (Map[I][J]>Map[I][K]+Map[K][J])
                    {
                        Map[I][J]=Map[I][K]+Map[K][J];
                    }
                }
            }

        }
        for (K=0; K<N; K++)
        {
            if (Max<Map[U][K]+Map[K][V])
            {
                Max=Map[U][K]+Map[K][V];
            }
        }
        printf("Case %d: %d\n",++Case,Max);
    }
    return 0;
}
