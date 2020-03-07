#include <stdio.h>
#include <stdlib.h>

unsigned long long int MyTable[100][100];

void MakeTable()
{
    int I,J,K;
    MyTable[1][0]=1;
    MyTable[1][1]=1;
    MyTable[2][0]=2;
    MyTable[2][1]=1;
    MyTable[2][2]=1;
    for (I=3; I<=65; I++)
    {
        for (K=0; K<I; K++)
        {
            MyTable[I][K]+=MyTable[I-1][K];
        }
        for (J=I-2; J>=1; J--)
        {
            for (K=0; K<I; K++)
            {
                MyTable[I][K+(I-J-2)]+=MyTable[J][K];
            }

        }
        MyTable[I][I-2]++;
        MyTable[I][I]++;
    }
}

int main()
{
    int N,S;
    MakeTable();
    while(EOF!=scanf("%d%d",&N,&S))
    {
        if (N<0&& S<0)
        {
            break;
        }
        printf("%llu\n",MyTable[N][S]);
    }
    return 0;
}
