#include <stdio.h>
#include <stdlib.h>

typedef struct Point
{
    double X;
    double Y;
}Point;

Point Points[10000];

int main()
{
    int N,I,J;
    int Index;
    double MinimunDistance,Temp;

    while( EOF!=scanf("%d",&N) )
    {
        if (N==0)
            break;
        for (I=0;I<N;I++)
        {
            scanf("%lf%lf",&(Points[I].X),&(Points[I].Y));
        }

        MinimunDistance=10000.0;

        for (I=0;I<N;I++)
        {
            for (J=I+1;J<N;J++)
            {
                Temp=sqrt((Points[I].X-Points[J].X)*(Points[I].X-Points[J].X)+
                          (Points[I].Y-Points[J].Y)*(Points[I].Y-Points[J].Y));
                if (Temp<MinimunDistance)
                {
                    MinimunDistance=Temp;
                }
            }
        }
        if (MinimunDistance<10000.0)
            printf("%.4f\n",MinimunDistance);
        else
            printf("INFINITY\n");
    }
    return 0;
}
