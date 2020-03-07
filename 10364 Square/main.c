#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int Rod[20];
int N,M;
int Sum,Avg;
int TableIndex;

char Used[20];
char Table[200000][20];


void MakeTable(int Index, int Value)
{
    int I,J,K;
    if (Index<M && Value < Avg)
    {
        Used[Index]=1;
        MakeTable(Index+1,Value+Rod[Index]);
        Used[Index]=0;
        MakeTable(Index+1,Value);
    }
    else if (Value == Avg)
    {
        memcpy(Table[TableIndex],Used,20);
        TableIndex++;
    }
    return 0;
}

int main()
{

    int I,J,K;

    scanf("%d",&N);
    while (N--)
    {
        scanf("%d",&M);
        memset(Used,0,20);
        TableIndex=0;
        for (Sum=0,I=0; I<M; I++)
        {
            scanf("%d",&Rod[I]);
            Sum+=Rod[I];
        }

        if (Sum%4!=0)
        {
            printf("no\n");
            continue;
        }
        Avg=Sum/4;
        for (I=0; I<M; I++)
        {
            if (Rod[I]>Avg)
            {
                printf("no\n");
                I=100;
                break;
            }
        }
        if (I==100)
        {
            continue;
        }
        MakeTable(0,0);
        printf("XX\n");
    }
    return 0;
}
