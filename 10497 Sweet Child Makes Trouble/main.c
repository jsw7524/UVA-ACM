#include <stdio.h>
#include <stdlib.h>

unsigned long long int DPTable[801];

void MakeDP_Table()
{
    unsigned long long int I;
    DPTable[2]=1;
    for (I=3;I<801;I++)
    {
        DPTable[I]=(I-1)*(DPTable[I-1]+DPTable[I-2]);
    }
    return;
}



int main()
{
    MakeDP_Table();
    int N;
    while (EOF!=scanf("%d",&N))
    {
        if (N==-1)
            break;
        printf("%llu\n",DPTable[N]);
    }
    return 0;
}
