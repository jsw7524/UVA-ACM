#include<stdlib.h>
#include<stdio.h>

typedef struct Point
{
    double X,Y;
}Point;

Point MyPoint[10000];
int MyCmp(const void *A, const void *B)
{
    return ((Point*)A)->X > ((Point*)B)->X ? 1 : -1;
}
int main()
{
    int I,J,T;
    double Min,Temp1,Temp2,Distance;
    while(scanf("%d",&T), T)
    {
        for(I = 0; I < T; I++)
            scanf("%lf%lf", &MyPoint[I].X, &MyPoint[I].Y);

        qsort(MyPoint, T, sizeof(Point), MyCmp);
        for(I = 0; I < T; I++)
        {
            for(J = I + 1; J < T; J++)
            {
                Temp1= MyPoint[I].X - MyPoint[J].X;
                Temp2= MyPoint[I].Y - MyPoint[J].Y;
                Distance = (Temp1 * Temp1 + Temp2 * Temp2);
                if( (Distance*Distance) >= Min)
                    break;
                if(Distance < Min)
                    Min = Distance;
            }
        }
        Min=sqrt(Min);
        if(Min >= 10000)
            printf("XXXINFINITY\n");
        else
            printf("XXX%.4f\n",Min);

    }
    return 0;
}
