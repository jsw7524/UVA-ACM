#include <stdio.h>
#include <stdlib.h>

int MyArray[1001];

int main()
{
    int N,I,J,K,Operations;
    while (EOF!=scanf("%d",&N))
    {
        Operations=0;
        for (I=0;I<N;I++)
        {
            scanf("%d",&J);
            MyArray[I]=J;
        }
        for (I=N-1;I>0;I--)
        {
            for (J=0;J<I;J++)
            {
                if (MyArray[J+1] < MyArray[J] )
                {
                    K=MyArray[J+1];
                    MyArray[J+1]=MyArray[J];
                    MyArray[J]=K;
                    Operations++;
                }
            }
        }
        printf("Minimum exchange operations : %d\n",Operations);
    }
    return 0;
}
