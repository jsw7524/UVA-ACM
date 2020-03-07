#include <stdio.h>
#include <stdlib.h>

#define IMax 1000000

unsigned char Record[IMax/8+100];
unsigned char Mask[8]= {0x01,0x80,0x40,0x20,0x10,0x08,0x04,0x02};

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
            for (J=I+I; J<IMax; J+=I)
                Record[J/8]|=Mask[J%8];
        }
        I+=4;
        if ((Record[I/8]&Mask[I%8])==0)
        {
            for (J=I+I; J<IMax; J+=I)
                Record[J/8]|=Mask[J%8];
        }
    }
    return;
}

int main()
{
    int N, K, Temp;
    MakePrimeTable();
    while (EOF!=scanf("%d",&N))
    {
        if ( 0 == (Record[N/8]&Mask[N%8]) )
        {
            Temp=N;
            K=0;
            while (Temp>0)
            {
                K*=10;
                K+=Temp%10;
                Temp/=10;
            }
            if (0 == (Record[K/8]&Mask[K%8]) && K != N )
            {
                printf("%d is emirp.\n",N);
            }
            else
            {
                printf("%d is prime.\n",N);
            }
        }
        else
        {
            printf("%d is not prime.\n",N);
        }
    }
    return 0;
}
