#include <stdio.h>
#include <stdlib.h>
char Input[32];
int  Deck[7]= {0,4,4,4,4,4,4};
/*  1 represents Player A.*/
/* -1 represents Player B.*/
int MinMax(int Sum, int Player)
{
    int I,J,K;

    if (Sum>31)
        return (Player==1)?1:-1;

    for (I=1; I<=6; I++)
    {
        if (Deck[I]>0)
        {
            if (Player==1)           /*Max*/
            {
                Deck[I]--;
                J=MinMax(Sum+I,-1);
                Deck[I]++;
                if (J== 1)
                {
                    return 1;
                }
            }
            else if (Player==-1)     /*Min*/
            {
                Deck[I]--;
                J=MinMax(Sum+I, 1);
                Deck[I]++;
                if (J==-1)
                {
                    return -1;
                }
            }

        }
    }
    return (Player==1)?-1:1;
}

int main()
{
    int I,J;
    while (EOF!=scanf("%s",Input))
    {
        Deck[1]=Deck[2]=Deck[3]=Deck[4]=Deck[5]=Deck[6]=4;
        for  (I=0,J=0; Input[I]>='1'&&Input[I]<='9'; I++)
        {
            J+=Input[I]-'0';
            Deck[Input[I]-'0']--;
        }
        printf("%s %c\n",Input,(1==MinMax(J,(I%2==0)?1:-1))?'A':'B');

    }
    return 0;
}
