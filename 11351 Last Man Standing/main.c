#include <stdio.h>
#include <stdlib.h>

int main()
{
    int T,N,K;
    int I,J,Case=0;
    scanf("%d",&T);
    while (T--)
    {
        scanf("%d%d",&N,&K);
        J=0;
        for (I=2;I<=N;I++)
        {
            J=(J+K)%I;
        }
        printf("Case %d: %d\n",++Case,J+1);
    }
    return 0;
}
