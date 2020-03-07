
#include <stdio.h>
#include <stdlib.h>

#define IMax 24750000

typedef struct TwinPrime
{
    int X;
    int Y;
}TwinPrime;

unsigned char Record[IMax/8+100];
unsigned char Mask[8]= {0x01,0x80,0x40,0x20,0x10,0x08,0x04,0x02};
int PrimeTable[13000000]={2,3,5};
TwinPrime MyTwinPrime[130000];
int P=3;

void MakePrimeTable()
{
    int I,J,K;
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
    for (K=3; K<IMax/8; K++)
    {
        I+=2;
        if ( (Record[I/8]&Mask[I%8]) == 0 )
        {
            PrimeTable[P++]=I;
            for (J=I+I; J<IMax; J+=I)
                Record[J/8]|=Mask[J%8];
        }
        I+=4;
        if ((Record[I/8]&Mask[I%8])==0)
        {
            PrimeTable[P++]=I;
            for (J=I+I; J<IMax; J+=I)
                Record[J/8]|=Mask[J%8];
        }
    }
    return;
}

int main()
{
    int I,J,N;
    MakePrimeTable();
    for (I=1,J=1;I<=P;I++)
    {
        if (PrimeTable[I]-PrimeTable[I-1]==2)
        {
            MyTwinPrime[J].X=PrimeTable[I-1];
            MyTwinPrime[J].Y=PrimeTable[I];
            J++;
        }
    }
    while (EOF!=scanf("%d",&N))
    {
        printf("(%d, %d)\n",MyTwinPrime[N].X,MyTwinPrime[N].Y);
    }
    return 0;
}
