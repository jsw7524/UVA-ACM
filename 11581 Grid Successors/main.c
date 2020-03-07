#include <stdio.h>
#include <stdlib.h>
int MyGrid[5][5];
int NextGrid(int OldGrid[5][5], int Length)
{
    int NewGrid[5][5]= {0};
    int I,J;
    for (I=1; I<=3; I++)
    {
        for (J=1; J<=3; J++)
        {
            NewGrid[I][J]=(OldGrid[I-1][J]+OldGrid[I+1][J]+OldGrid[I][J-1]+OldGrid[I][J+1])%2;
        }
    }
    /*Check whether there are all 0s*/
    for (I=1; I<=3; I++)
    {
        for (J=1; J<=3; J++)
        {
            if (NewGrid[I][J]!=0)
            {
                I=5,J=5;
                break;
            }
        }
    }
    if (I==4&&J==4)return Length;
    /*Check whether NewGrid is identical to the original.*/
    for (I=1; I<=3; I++)
    {
        for (J=1; J<=3; J++)
        {
            if (NewGrid[I][J]!=MyGrid[I][J])
            {
                I=5,J=5;
                break;
            }
        }
    }
    if (I==4&&J==4)return Length;

    return NextGrid(NewGrid,Length+1);
}

int main()
{
    int N;
    int I, J, K;
    scanf("%d",&N);
    while (N--)
    {
        K=0;
        for (I=1; I<=3; I++)
        {
            for (J=1; J<=3; J++)
            {
                scanf("%1d",&MyGrid[I][J]);
                K+=MyGrid[I][J];
            }
        }
        if (K==0)
            printf("-1\n");
        else
            printf("%d\n",NextGrid(MyGrid,0));
    }
    return 0;
}
