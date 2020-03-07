#include <stdio.h>
#include <stdlib.h>
int main()
{
    int N,R,C;
    while (EOF!=scanf("%d",&N))
    {
        if (N<=1)
        {
            printf("1\n");
            continue;
        }
        for (R=1,C=1;R!=0;)
        {
            R=((R*10)%N+1)%N;
            C++;
        }
        printf("%d\n",C);
    }
    return 0;
}
