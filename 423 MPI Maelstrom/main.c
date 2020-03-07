#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>

int N;
int Map[102][102];
int Estimate[102];

int main()
{
    int I,J,K;
    char Temp;
    while(EOF!=scanf("%d",&N))
    {
        /*Input*/
        memset(Map,0,4*102*102);
        for (I=2; I<N; I++)
        {
            for (J=1; J<I-1; J++)
            {
                scanf("%c",&Temp);
                if (Temp!='x')
                {
                    ungetc(Temp,stdin);
                }
                else
                {
                    Map[I][J]=99999999;
                    getchar();
                    continue;
                }
                scanf("%d ",&K);
                Map[I][J]=K;
                Map[J][I]=K;
            }
            scanf("%c",&Temp);
            if (Temp!='x')
            {
                ungetc(Temp,stdin);
            }
            else
            {
                Map[I][J]=99999999;
                getchar();
                continue;
            }
            scanf("%d\n",&K);
            Map[I][J]=K;
            Map[J][I]=K;
        }
        for (J=1; J<I-1; J++)
        {
            scanf("%c",&Temp);
            if (Temp!='x')
            {
                ungetc(Temp,stdin);
            }
            else
            {
                Map[I][J]=99999999;
                getchar();
                continue;
            }
            scanf("%d ",&K);
            Map[I][J]=K;
            Map[J][I]=K;
        }
        scanf("%c",&Temp);
        if (Temp!='x')
        {
            ungetc(Temp,stdin);
        }
        else
        {
            Map[I][J]=99999999;
            getchar();
            continue;
        }
        scanf("%d",&K);
        Map[I][J]=K;
        Map[J][I]=K;


        /*BellmanFord algorithm*/
        for (I=2; I<=N; I++)
        {
            Estimate[I]=99999999;
        }
        for (I=1; I<=N-1; I++)
        {
            for (J=1; J<=N; J++)
            {
                for (K=1; K<=N; K++)
                {
                    if (Map[J][K]>0)
                    {
                        if (Estimate[K]>Estimate[J]+Map[J][K])
                        {
                            Estimate[K]=Estimate[J]+Map[J][K];
                        }
                    }
                }
            }
        }

        /*find the longest path from source*/
        for (I=2,K=Estimate[1]; I<=N; I++)
        {
            if (K<Estimate[I])
            {
                K=Estimate[I];
            }
        }
        printf("%d\n",K);
    }
    return 0;
}
