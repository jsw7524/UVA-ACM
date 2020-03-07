#include <stdio.h>
#include <stdlib.h>

int main()
{
    int N,K;
    int S,E,A,Sum;
    while (EOF!=scanf("%d%d",&N,&K))
    {
        Sum=0;
        for (Sum=0,S=2; S<=N;)
        {
            A=K/S;
            E=K/A;
            if (E>N)
                E=N;
            Sum+=(E-S+1)*(K%S)-A*((E-S+1)*(E-S)/2);
            S=E+1;
        }
        printf("%d\n",Sum);
        int I,J;
        for (J=0,I=1; I<=N; I++)
        {
            printf("%2d %2d %2d\n",I,K/I,K%I);
            J+=K%I;
        }
        printf("%d\n",J);
    }
    return 0;
}
