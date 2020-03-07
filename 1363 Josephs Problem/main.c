#include <stdio.h>
#include <stdlib.h>

int main()
{
    int N,K;
    long long S,E,A,Sum;
    while (EOF!=scanf("%d%d",&N,&K))
    {
        Sum=0;
        for (Sum=0,S=2; S<=N;)
        {
            A=K/S;
            if (A==0)
            {
                Sum+=K*(N-S+1);
                break;
            }
            E=K/A;
            if (E>N)
                E=N;
            Sum+=(E-S+1)*(K%S)-A*((E-S+1)*(E-S)/2);
            S=E+1;
        }
        printf("%lld\n",Sum);
    }
    return 0;
}
