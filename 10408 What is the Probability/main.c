#include <stdio.h>
#include <stdlib.h>

int main()
{
    int S,N,I,J;
    double P,A,B,K;

    scanf("%d",&S);

    while (S--)
    {
        scanf("%d %lf %d",&N,&P,&I);
        A=P;
        B=P;
        K=P;
        do
        {
            A=B;
            for (J=0;J<N;J++)
            {
                K*=(1-P);
            }
            B=A+K;
        }while (B-A >= 0.00001);
        printf("%.4f\n",A);
    }

    return 0;
}
