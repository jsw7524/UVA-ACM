#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAXIMUM (100+1)

typedef struct
{
    int A;
    int B;
} Clause;

Clause MyClause[MAXIMUM * MAXIMUM];
int MyAssignment[MAXIMUM];
int Temp1[MAXIMUM];
int Valid[MAXIMUM];
int Temp2[MAXIMUM];
int N, C;

int Assign(int X)
{
    int I, J, K;

    if (MyAssignment[abs(X)] != -1)
    {
        if ( (MyAssignment[abs(X)]==0 && X>0)
                ||(MyAssignment[abs(X)]==1 && X<0))
            return -1;
        return 1;
    }
    MyAssignment[abs(X)]=(X>0)?1:0;

    for (I = 1; I <= C; I++)
    {
        if (Valid[I] == 0)
        {
            if (MyClause[I].A == X || MyClause[I].B == X)
            {
                Valid[I]=1;
                continue;
            }
            if ( MyClause[I].A == -X)
            {
                K = Assign(MyClause[I].B);
                if (K == -1)
                    return -1;
            }
            if ( MyClause[I].B == -X)
            {
                K = Assign(MyClause[I].A);
                if (K == -1)
                    return -1;
            }
        }
    }
    return 1;
}

int main()
{
    int I, J, K, F;
    int D1;
    char C2;
    while ( EOF != scanf("%d%d", &N, &C))
    {
        if (N==0 && C == 0)
        {
            break;
        }
        F=0;
        memset(MyAssignment, -1, 4*MAXIMUM);
        memset(Valid, 0, 4*MAXIMUM);
        for (I = 1; I <= C; I++)
        {
            scanf("%d%c",&D1,&C2);
            MyClause[I].A=(C2=='w'?(D1)+1:-1*((D1)+1));
            scanf("%d%c",&D1,&C2);
            MyClause[I].B=(C2=='w'?(D1)+1:-1*((D1)+1));
        }

        if (-1 == Assign(1))
        {
            printf("bad luck\n");
            F = 1;
            continue;
        }

        for ( J = 2; J <= N; J++)
        {
            if (MyAssignment[J] == -1)
            {
                memcpy(Temp1, MyAssignment, 4*MAXIMUM);
                memcpy(Temp2, Valid, 4*MAXIMUM);
                if (-1 == Assign(J))
                {
                    memcpy(MyAssignment, Temp1, 4*MAXIMUM);
                    memcpy(Valid, Temp2, 4*MAXIMUM);
                    if (-1 == Assign(-J))
                    {
                        printf("bad luck\n");
                        F = 1;
                        break;
                    }
                }
            }
        }
        if (F == 0)
        {
            for ( J = 2;  J < N; J++)
            {
                if ( MyAssignment[1] == MyAssignment[J])
                {
                    printf("%dw ",J-1);
                }
                else
                {
                    printf("%dh ",J-1);
                }
            }
            if ( MyAssignment[1] == MyAssignment[N])
            {
                printf("%dw",J-1);
            }
            else
            {
                printf("%dh",J-1);
            }
            printf("\n");
        }
    }
    return 0;
}
