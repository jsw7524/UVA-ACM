#include <stdio.h>
#include <stdlib.h>

unsigned char MyGraph[101][101];
unsigned char Temp[101][101];

int main()
{
    int N,I,J,K,L,C;
    while (1)
    {
        scanf("%d",&N);
        if (N==0)
            break;

        for (I=0; I<=100; I++)
        {
            for (J=0; J<=100; J++)
            {
                MyGraph[I][J]=255;
            }
        }

        while (1)
        {
            scanf("%d",&I);
            if (I==0)
                break;

            while (1)
            {
                scanf("%d",&J);
                if (J==0)
                    break;
                MyGraph[I][J]=1;
            }
        }

        /*Algorithm*/
        for (K=1; K<=N; K++)
        {
            for (I=1; I<=N; I++)
            {
                for (J=1; J<=N; J++)
                {
                    if (MyGraph[I][J]>MyGraph[I][K]+MyGraph[K][J])
                    {
                        MyGraph[I][J]=MyGraph[I][K]+MyGraph[K][J];
                    }
                }
            }
        }

        scanf("%d",&K);

        for (I=1;I<=K;I++)
        {
            C=0;
            scanf("%d",&J);
            for (L=1;L<=N;L++)
            {
                if (MyGraph[J][L]==255)
                {
                    C++;
                }
            }
            printf("%d",C);
            for (L=1;L<=N;L++)
            {
                if (MyGraph[J][L]==255)
                {
                    printf(" %d",L);
                }
            }
            printf("\n");
        }
    }
    return 0;
}
