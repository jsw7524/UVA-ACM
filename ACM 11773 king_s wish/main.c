#include <stdio.h>
#include <stdlib.h>
#include <string.h>
unsigned char Record[1000010];
unsigned long long int PrimeTable[80000]={2,3,5};
void MakePrimeTable()
{
    int I,J,P=3;
    for (J=1; J<1000000; J+=6)
    {
        Record[J+1]=1;
        Record[J+2]=1;
        Record[J+3]=1;
        Record[J+5]=1;
    }
    for (I=5; I<1000000; )
    {
        I+=2;
        if (Record[I]==0)
        {
            PrimeTable[P++]=I;
            for (J=I+I; J<1000000; J+=I)
            {
                Record[J]=1;
            }
        }
        I+=4;
        if (Record[I]==0)
        {
            PrimeTable[P++]=I;
            for (J=I+I; J<1000000; J+=I)
            {
                Record[J]=1;
            }
        }
    }
    PrimeTable[P]=1000003;
}
int main()
{
    unsigned long long int I,J,Cache,TempL,TempW,Diff,E,D;
    unsigned long long int K,L,W;
    int T,Case=0;
    MakePrimeTable();
    scanf("%d",&T);
    while (T--)
    {
        scanf("%llu",&K);
        D=K;
        L=K;
        I=0;
        Diff=0;
        Cache=PrimeTable[0];
        while (Cache*Cache<=K && D!=1)
        {
            if (K%Cache==0)
            {
                TempW=1;
                J=K;
                while (J%Cache==0)
                {
                    TempW*=Cache;
                    J/=Cache;
                    D/=Cache;
                }
                TempL=K/Cache;
                if (TempW > TempL )
                {
                    E=TempL;
                    TempL=TempW;
                    TempW=E;
                }
                if (TempL-TempW>Diff)
                {
                    L=TempL;
                    W=TempW;
                    Diff=TempL-TempW;
                }
            }
            I++;
            Cache=PrimeTable[I];
        }
        if (L==K || W==1)
        {
            printf("Case %d: Impossible\n",++Case);
        }
        else
        {
            printf("Case %d: %llu %llu\n",++Case,L,W);
        }
    }
    return 0;
}
