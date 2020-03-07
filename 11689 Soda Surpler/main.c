#include <stdio.h>
#include <stdlib.h>

int main()
{
    int E,F,C,N;
    int EmptyBottles,Colas,Sum;
    scanf("%d",&N);
    while (N--)
    {
        scanf("%d%d%d",&E,&F,&C);
        EmptyBottles=E+F;
        Colas=0;
        Sum=0;

        while (EmptyBottles>=C)
        {
            Colas=EmptyBottles/C;
            Sum+=Colas;
            EmptyBottles=EmptyBottles%C+Colas;
        }
        printf("%d\n",Sum);
    }
    return 0;
}
