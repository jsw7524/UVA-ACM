#include <stdio.h>
#include <stdlib.h>

int main()
{
    int Point[701][2];
    int N;
    int C;
    int Index;
    int Counter,Max;
    int Flag=1;
    scanf("%d",&N);
    C=getc(stdin);
    C=getc(stdin);
    while (N--)
    {
        if (Flag==1)
        {
            Flag=0;
        }
        else
        {
            printf("\n");
        }
        Index=0;
        Max=0;
        while (1)
        {
            C=getc(stdin);
            if (C=='\n' || C==EOF)
            {
                break;
            }
            ungetc(C,stdin);
            scanf("%d%d",&Point[Index][0],&Point[Index][1]);
            Index++;
            C=getc(stdin);
            if (C==EOF)
            {
                break;
            }
        }

        /*algorithm*/
        int I,J,K;
        for (I=0;I<Index;I++)
        {
            for (J=I+1;J<Index;J++)
            {
                Counter=0;
                for (K=0;K<Index;K++)
                {
                    if ((Point[I][0]-Point[J][0])==0)
                    {
                        if (Point[K][0]==Point[I][0])
                        {
                            Counter++;
                        }
                    }
                    else if ((Point[K][1]-Point[J][1])*(Point[I][0]-Point[J][0])==(Point[I][1]-Point[J][1])*(Point[K][0]-Point[J][0]))
                    {
                        Counter++;
                    }
                }
                if (Counter>Max)
                {
                    Max=Counter;
                }
            }
        }
        printf("%d\n",Max);
    }
    return 0;
}
