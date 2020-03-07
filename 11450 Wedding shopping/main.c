#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int Table[21][301];

int main()
{
    int N,M,C,K,P;
    int I,J,Z;
    scanf("%d",&N);

    while (N--)
    {
        memset(Table,0,4*21*301);
        scanf("%d%d",&M,&C);
        scanf("%d",&K);
        for (J=1; J<=K; J++)
        {
            scanf("%d",&P);
            Table[1][P] =1;
        }
        for (I=2; I<=C; I++)
        {
            scanf("%d",&K);
            for (J=1; J<=K; J++)
            {
                scanf("%d",&P);
                for (Z=1; Z<=M; Z++)
                {
                    if ( Table[I-1][Z] ==1 )
                    {
                        Table[I][Z+P] =1;
                    }
                }
            }
        }
        for (J=M; J>0; J--)
        {
            if (Table[C][J]==1)
            {
                printf("%d\n",J);
                break;
            }
        }
        if (J==0)
        {
            printf("no solution\n");
        }
    }
    return 0;
}
