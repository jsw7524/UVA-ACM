
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

#define IMax 100020041

unsigned char Record[IMax/8+100];
unsigned char Mask[8]= {0x01,0x80,0x40,0x20,0x10,0x08,0x04,0x02};
void MakePrimeTable();

void MakePrimeTable()
{
    unsigned int I,J,K,L,M;

    Record[0]=0x95;
    Record[1]=0xd7;
    Record[2]=0x5d;
    for (J=3; J<IMax/8; J+=3)
    {
        Record[J]=0x75;
        Record[J+1]=0xd7;
        Record[J+2]=0x5d;
    }
    I=5;
    if ( (Record[I/8]&Mask[I%8]) == 0 )
    {
        for (J=I+I; J<IMax; J+=I)
            Record[J/8]|=Mask[J%8];
    }
    L=(unsigned int)ceil(sqrt((double)IMax));
    while (I<=L)
    {
        I+=2;
        if ( (Record[I/8]&Mask[I%8]) == 0 )
        {
            for (J=I*I,M=2*I; J<IMax; J+=M)
                Record[J/8]|=Mask[J%8];
        }
        I+=4;
        if ((Record[I/8]&Mask[I%8])==0)
        {
            for (J=I*I,M=2*I; J<IMax; J+=M)
                Record[J/8]|=Mask[J%8];
        }
    }
    return;
}

int main()
{
    unsigned int A,B,I,J;
    double N;
    char Buff[10];
    MakePrimeTable();

    while (EOF!=scanf("%u%u",&A,&B))
    {
        for (I=A,N=0.0; I<=B; I++)
        {
            J=I*I+I+41;
            if ((Record[J/8]&Mask[J%8])==0)
            {
                N++;
            }
        }
        printf("%.2f\n",100*(N/(B-A+1)+0.000000001));
    }
    return 0;
}
