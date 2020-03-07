#include <stdio.h>
#include <stdlib.h>

typedef
struct
{
    char Digit[256];
}
BigInt;

BigInt Fib[1001];
BigInt Priest[1001];

void BigNum_Add(BigInt *Taget,BigInt *Augend, BigInt *Addend)
{
    int I, J, K;
    for (I=0; I<256; I++)
    {
        Taget->Digit[I]+=(Augend->Digit[I]+Addend->Digit[I]);
        if (Taget->Digit[I]>=10)
        {
            Taget->Digit[I+1]=1;
            Taget->Digit[I]%=10;
        }
    }
}

int BigNum_Lesser(BigInt *Left, BigInt *Right)
{
    int I, J, K;
    for (I=255; I>=0; I--)
    {
        if (Left->Digit[I]<Right->Digit[I])
        {
            return 1;
        }
    }
    return 0;
}

void MakeFib()
{
    int I, J, K;
    Fib[1].Digit[0]=1;
    Fib[2].Digit[0]=1;
    for (I=3; I<=1000; I++)
    {
        BigNum_Add(Fib+I, Fib+I-1, Fib+I-2);
    }
}

void MakePriest()
{
    int I, J, K;
    BigInt Minimun,Temp1,Temp2;

    Priest[1].Digit[0]=1;
    Priest[2].Digit[0]=3;
    for (I=3; I<=1000; I++)
    {
        Minimun=Fib[I+1];
        for (J=1;J<I;J++)
        {
            BigNum_Add(&Temp1, Priest+J, Priest+J);
            BigNum_Add(&Temp2, &Temp1, Fib+(I-J));
            if (BigNum_Lesser(&Temp2,&Minimun))
            {
                Minimun=Temp2;
            }
        }
        Priest[I]=Minimun;
    }
}

int main()
{
    MakeFib();
    MakePriest();
    printf("%d\n",sizeof(BigInt));
    return 0;
}
