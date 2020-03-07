#include <stdio.h>
#include <stdlib.h>

int DP[1001][1001];
char Buffer[1001];

int main()
{
    int T;
    int I,J,K;
    for (I = 0; I < 1000; I++)
    {
        DP[I][I]=1;
    }
    scanf("%d", &T);
    getchar();
    while (T--)
    {
        gets(Buffer);
        K=strlen(Buffer);
        for (J = 1; J < K; J++)
        {
            for (I = J-1; I >= 0; I--)
            {
                if (Buffer[I] == Buffer[J])
                {
                    DP[I][J]=DP[I+1][J-1]+2;
                }
                else
                {
                    DP[I][J]=(DP[I+1][J]>DP[I][J-1]?DP[I+1][J]:DP[I][J-1]);
                }
            }
        }
        printf("%d\n",DP[0][K-1]);
    }
    return 0;
}
