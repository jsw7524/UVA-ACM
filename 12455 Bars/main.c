#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char MyTable[1001];

int main()
{
    int  T,N,P,L,I,J,K;
    scanf("%d",&T);
    while (T--)
    {
        memset(MyTable,0,1001);
        MyTable[0]=1;
        scanf("%d%d",&N,&P);

        for (K=0;K<P;K++)
        {
            scanf("%d",&I);
            for (J=N;J>=I;J--)
            {
                if (MyTable[J-I]==1)
                {
                    MyTable[J]=1;
                }
            }
        }
        printf("%s",(MyTable[N])?"YES\n":"NO\n");
    }
    return 0;
}
