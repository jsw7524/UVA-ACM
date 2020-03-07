#include <stdio.h>
#include <stdlib.h>
#include <string.h>

unsigned char Table[1000001];

int GCD(unsigned long long int A, unsigned long long int B)
{
    if (A%B==0)
    {
        return B;
    }
    return GCD(B,A%B);
}

int main()
{
    int M,N,I,J,K,P,L,H,T,Z;
    int U;
    while (EOF!=scanf("%d",&Z))
    {
        U=Z;
        P=0;
        memset(Table,0,U+1);
        for (M=1; M<=1000; M++)
        {
            N=M+1;
            I=M*M+N*N;
            J=N*N-M*M;
            K=2*M*N;
            for (;(I)<=U&&(K)<=U;)
            {
                if (GCD(M,N)==1)
                {
                    P++;
                    for (L=1; (L*I<=U)&&(L*J<=U)&&(L*K<=U); L++)
                    {
                        Table[L*I]=1;
                        Table[L*J]=1;
                        Table[L*K]=1;
                    }
                }
                N+=2;
                I=M*M+N*N;
                J=N*N-M*M;
                K=2*M*N;
            }
        }
        H=0;
        for (L=1; L<=U; L++)
        {
            if (Table[L]==0)
            {
                H++;
            }
        }
        printf("%d %d\n",P,H);
    }
    return 0;
}
