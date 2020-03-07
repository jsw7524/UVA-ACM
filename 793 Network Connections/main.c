#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAXIMUM (1000+1)

typedef struct
{
    int Value;
    int Parent;
    int Rank;
}Node;
Node MyNode[50000];
void Make_Set(int X)
{
    MyNode[X].Value=X;
    MyNode[X].Parent=X;
    MyNode[X].Rank=0;
}
int Find_Set(int X)
{
    if (X!=MyNode[X].Parent)
    {
        return MyNode[X].Parent=Find_Set(MyNode[X].Parent);
    }
    return MyNode[X].Parent;
}
void Link(int X ,int Y)
{
    if (MyNode[X].Rank>MyNode[Y].Rank)
    {
        MyNode[Y].Parent=X;

    }
    else
    {
        MyNode[X].Parent=Y;
        if (MyNode[X].Rank==MyNode[Y].Rank)
        {
            MyNode[Y].Rank++;
        }
    }
}
void Union_Set(int X ,int Y)
{
    Link(Find_Set(X),Find_Set(Y));
}

int main()
{
    int N, I, J, K, S, D;
    int Computers, Successful, Unsuccessful;
    int C;
    scanf("%d", &N);
    K=1;
    while (N--)
    {
        if (K == 1)
        {
            K=0;
        }
        else
        {
            printf("\n");
        }
        Successful=Unsuccessful=0;
        scanf("%d", &Computers);
        for (I = 1; I <= Computers; I++)
        {
            Make_Set(I);
        }
        getchar();
        while ('\n' != (C = getchar()))
        {
            if (C == EOF )
            {
                break;
            }
            scanf("%d %d", &S, &D);
            if (C == 'c')
            {

                Union_Set(S,D);
            }
            else
            {
                if (Find_Set(S) == Find_Set(D))
                {
                    Successful++;
                }
                else
                {
                    Unsuccessful++;
                }
            }
            getchar();
        }
        printf("%d,%d\n", Successful, Unsuccessful);
    }
    return 0;
}
