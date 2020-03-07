#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char MineField[102][102];

int main()
{
    int N,M,I,J,Mine;
    int X=0;
    int F=0;
    while (EOF!=scanf("%d%d\n",&N,&M))
    {
        if ( N==0 )
            break;
        memset(MineField,0,102*102);
        for ( I=1; I<=N; I++ )
        {
            gets( (MineField[I]+1) );
        }
        if (F==1)
            printf("\n");
        printf("Field #%d:\n",++X);
        for ( I=1; I<=N; I++)
        {
            for ( J=1; J<=M; J++ )
            {
                Mine=0;
                if (MineField[I][J]=='*')
                {
                    printf("*");
                }
                else
                {
                    if (MineField[I-1][J-1]=='*')Mine++;
                    if (MineField[I-1][J]=='*')Mine++;
                    if (MineField[I-1][J+1]=='*')Mine++;
                    if (MineField[I][J-1]=='*')Mine++;
                    if (MineField[I][J+1]=='*')Mine++;
                    if (MineField[I+1][J-1]=='*')Mine++;
                    if (MineField[I+1][J]=='*')Mine++;
                    if (MineField[I+1][J+1]=='*')Mine++;
                    printf("%d",Mine);
                }
            }
            printf("\n");
        }
        F=1;
    }
    return 0;
}
