#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef struct Point
{
    double X,Y;
} Point;
Point SortedX[3000001],SortedY[3000001];
int CompareX (const void * A, const void * B)
{
    return ( ((Point*)A)->X - ((Point*)B)->X );
}
int CompareY (const void * A, const void * B)
{
    return ( ((Point*)A)->Y - ((Point*)B)->Y );
}
double TheClosestPair( int L , int R )
{
    double LMinimun,RMinimun,D,Temp1;
    int K,P,C,S;
    if (R-L<1)
    {
        return 100000000.0;
    }
    else if (R-L==1)
    {
        return ((SortedX[R].X-SortedX[L].X)*(SortedX[R].X-SortedX[L].X)+(SortedX[R].Y-SortedX[L].Y)*(SortedX[R].Y-SortedX[L].Y));
    }
    else
    {
        LMinimun=TheClosestPair(L,(L+R)/2);
        RMinimun=TheClosestPair((L+R)/2,R);
        D=LMinimun<RMinimun?LMinimun:RMinimun;
        K=P=(L+R)/2;
        while ((SortedX[K].X<=SortedX[(L+R)/2].X+D) && K<=R)K++;
        K--;
        while ((SortedX[P].X>=SortedX[(L+R)/2].X-D) && P>=L)P--;
        P++;
        memcpy(SortedY,SortedX+P,sizeof(Point)*(K-P+1));
        qsort(SortedY,K-P+1,sizeof(Point),CompareY);
        for (C=0; C<(K-P+1); C++)
        {
            for (S=C+1; S<C+8&&S<(K-P+1); S++)
            {
                Temp1=((SortedY[C].X-SortedY[S].X)*(SortedY[C].X-SortedY[S].X)+(SortedY[C].Y-SortedY[S].Y)*(SortedY[C].Y-SortedY[S].Y));
                if (D>Temp1)D=Temp1;
            }
        }
        return D;
    }
}
int main()
{
    int I,N;
    double MinimunDistance;
    while (EOF!=scanf("%d",&N),N);
    {
        for (I=0; I<N; I++)
            scanf("%lf%lf",&(SortedX[I].X),&(SortedX[I].Y));
        memcpy(SortedY,SortedX,sizeof(Point)*N);
        qsort(SortedX,N,sizeof(Point),CompareX);
        MinimunDistance=sqrt(TheClosestPair(0,N-1));
        if (MinimunDistance<10000.0)
            printf("%.4f\n",MinimunDistance);
        else
            puts("INFINITY");
    }
    return 0;
}
