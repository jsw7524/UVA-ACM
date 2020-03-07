#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char Year[10001];

int main()
{
    int N,K,Y,A,B,L,X,U;
    K=0;
    while (EOF!=scanf("%d",&N))
    {
        if (N==0)
            break;
        memset(Year,0,10001);
        U=N;
        while (N--)
        {
            scanf("%d%d%d",&Y,&A,&B);
            for (L=Y,X=0;L<10000;X++,L=Y+X*(B-A))
            {
                Year[L]++;
            }
        }
        for (X=0;X<10000;X++)
        {
            if (U==Year[X])
            {
                L=X;
                break;
            }
        }
        if (X!=10000)
            printf("Case #%d:\nThe actual year is %d.\n\n",++K,L);
        else
            printf("Case #%d:\nUnknown bugs detected.\n\n",++K);
    }
    return 0;
}
