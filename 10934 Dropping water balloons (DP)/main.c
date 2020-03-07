#include <stdio.h>
#include <stdlib.h>

unsigned long long int MyTable[101][65];

void MakeTable()
{
    int I,J;
    for (J=1;J<=64;J++)
        MyTable[1][J]=1;
    for (I=1;I<=100;I++)
        MyTable[I][1]=1;
    for (I=2;I<=100;I++)
    {
        for (J=2;J<=64;J++)
        {
            MyTable[I][J]=MyTable[I][J-1]+MyTable[I-1][J-1];
        }
    }
    return;
}

int main()
{
    int I,K;
    unsigned long long int N,Sum;
    MakeTable();
    while (scanf("%d%lld",&K,&N))
    {
        if (K==0 || N==0)
            break;

        Sum=0;
        for(I=0;(Sum<N)&&(I<65);I++)
        {
            Sum+=MyTable[K][I];
        }
        I--;
        if (I > 63)
            printf("More than 63 trials needed.\n");
        else
            printf("%d\n",I);
    }
    return 0;
}
