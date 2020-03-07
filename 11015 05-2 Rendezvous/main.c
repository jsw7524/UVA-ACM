#include <stdio.h>
#include <stdlib.h>

int DP_Table[23][23];
char Name[23][11];

int main()
{
    int I,J,K,L,MinCost,Temp;
    int N,M,Case=1;
    while (scanf("%d%d",&N,&M))
    {
        if (N==0)
            break;

        for (I=0; I<=N; I++)
        {
            for (J=0; J<=N; J++)
            {
                DP_Table[I][J]=99999999;
            }
            DP_Table[I][I]=0;
        }
        for (I=1; I<=N; I++)
        {
            scanf("%s",(Name[I]));
        }
        for (L=0; L<M; L++)
        {
            scanf("%d%d%d",&I,&J,&K);
            DP_Table[I][J]=K;
            DP_Table[J][I]=K;
        }
        for (K=1; K<=N; K++)
        {
            for (I=1; I<=N; I++)
            {
                for (J=I+1; J<=N; J++)
                {
                    DP_Table[I][J]=(DP_Table[I][J]<DP_Table[I][K]+DP_Table[K][J])?DP_Table[I][J]:DP_Table[I][K]+DP_Table[K][J];
                    DP_Table[J][I]=DP_Table[I][J];
                }
            }
        }
        for (I=1,K=1,MinCost=9999999;I<=N;I++)
        {
            Temp=0;
            for (J=1;J<=N;J++)
            {
                Temp+=DP_Table[I][J];
            }
            if (Temp < MinCost)
            {
                MinCost=Temp;
                K=I;
            }
        }
        printf("Case #%d : %s\n",Case++,Name[K]);
    }
    return 0;
}
