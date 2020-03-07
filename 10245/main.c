#include<stdlib.h>
#include<stdio.h>

typedef struct Point
{
    double X,Y;
} Point;

Point MyPoint[10000];
int MyCmp(const void *A, const void *B)
{
    return ((Point*)A)->X > ((Point*)B)->X ? 1 : -1;
}

int MyBinarySearch(Point* Array,int Goal,int L,int R)
{
    int M;
    while (L<R)
    {
        M=(L+R)/2+1;
        if ( Array[M].X==Goal )
        {
            return M;
        }
        if ( Array[M].X>Goal )
        {
            R=M-1;
        }
        else
        {
            L=M;
        }
    }
    return R;
}

int main()
{
    int I,J,K,L,P,T;
    double Min,Temp1,Temp2,Distance;
    int Interval[400],Max;
    while(scanf("%d",&T), T)
    {
        memset(Interval,0,4*400);
        for(I = 0; I < T; I++)
        {
            scanf("%lf%lf", &MyPoint[I].X, &MyPoint[I].Y);
            Interval[(int)(MyPoint[I].X/400)]++;
        }

        for(I = 1,K=0,Max=Interval[0]; I < 400; I++)
        {
            if (Max<Interval[I])
            {
                K=I;
                Max=Interval[I];
            }
        }
        qsort(MyPoint, T, sizeof(Point), MyCmp);
        I=MyBinarySearch(MyPoint,K*400,0,T-1);
        L=I+Interval[K];
        /**/
        Min=10000*10000;
        for(; I < L; I++)
        {
            for(J = I + 1; J < L; J++ )
            {
                Temp1= MyPoint[I].X - MyPoint[J].X;
                Temp2= MyPoint[I].Y - MyPoint[J].Y;
                Distance = (Temp1 * Temp1 + Temp2 * Temp2);
                if( (Temp1*Temp1) >= Min)
                    break;
                if(Distance < Min)
                    Min = Distance;
            }
        }
        /**/
        for(I = 0; I < T; I++)
        {
            for(J = I + 1; J < T-1; )
            {
                Temp1= MyPoint[I].X - MyPoint[J].X;
                Temp2= MyPoint[I].Y - MyPoint[J].Y;
                Distance = (Temp1 * Temp1 + Temp2 * Temp2);
                if( (Temp1*Temp1) >= Min)
                    break;
                if(Distance < Min)
                    Min = Distance;
                J++;
                Temp1= MyPoint[I].X - MyPoint[J].X;
                Temp2= MyPoint[I].Y - MyPoint[J].Y;
                Distance = (Temp1 * Temp1 + Temp2 * Temp2);
                if( (Temp1*Temp1) >= Min)
                    break;
                if(Distance < Min)
                    Min = Distance;
                J++;
            }
            if (J==T-1)
            {
                Temp1= MyPoint[I].X - MyPoint[J].X;
                Temp2= MyPoint[I].Y - MyPoint[J].Y;
                Distance = (Temp1 * Temp1 + Temp2 * Temp2);
                if(Distance < Min)
                    Min = Distance;
            }
        }
        Min=sqrt(Min);
        if(Min >= 10000)
            printf("INFINITY\n");
        else
            printf("%.4f\n",Min);
    }
    return 0;
}
