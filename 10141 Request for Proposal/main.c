#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef
struct
{
    char Company[81];
    double Price;
    int MetRequirememt;
} Data;

Data MyData,BestProposal;
char Line[81];

int CMP(const void * A, const void * B)
{
    if ( ((Data*)A)->MetRequirememt > ((Data*)B)->MetRequirememt )
    {
        return -1;
    }
    else if ( ((Data*)A)->MetRequirememt < ((Data*)B)->MetRequirememt )
    {
        return 1;
    }
    else
    {
        if ( ((Data*)A)->Price > ((Data*)B)->Price )
        {
            return 1;
        }
        else if ( ((Data*)A)->Price < ((Data*)B)->Price )
        {
            return -1;
        }
        else
        {
            return 0;
        }
    }
}

void FillOutData()
{
    int I,J,K;
    gets(&MyData.Company);
    scanf("%lf%d",&MyData.Price,&MyData.MetRequirememt);
    getchar();
    for (J=0; J<MyData.MetRequirememt; J++)
    {
        gets(Line);
    }
}

int main()
{
    int I,J,K;
    int Case=0;
    int N,P;
    while(1)
    {
        scanf("%d%d",&N,&P);
        if (N==0&&P==0)
            break;

        if (Case==0)
            Case++;
        else
            printf("\n");

        getchar();
        for (I=0; I<N; I++)
        {
            gets(Line);
        }
        FillOutData();
        BestProposal=MyData;
        for (I=1; I<P; I++)
        {
            FillOutData();
            if (1==CMP(&BestProposal,&MyData))
            {
                BestProposal=MyData;
            }
        }
        printf("RFP #%d\n%s\n",Case++,BestProposal.Company);
    }
    return 0;
}
