/*Find the middle place value among numbers*/

#include <stdio.h>
#include <stdlib.h>
int Relatives[500];
int MyCMP(const void *A,const void *B)
{
    return *((int *)A) - *((int *)B);
}
int main()
{
    int N,R,I,Mid,Distance;
    scanf("%d",&N);
    while (N--)
    {
        scanf("%d",&R);
        Distance=0;
        for (I=0;I<R;I++)
            scanf("%d",&Relatives[I]);
        qsort(Relatives,R,4,MyCMP);
        if (R%2==1)
            Mid=Relatives[R/2];
        else
            Mid=Relatives[R/2-1];
        for (I=0;I<R;I++)
            Distance+=abs(Relatives[I]-Mid);
        printf("%d\n",Distance);
    }
    return 0;
}
