#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct Point
{
    int X,Y,Z;
} Point;

Point MyTree[5000];
int Statistic[10];
int CMP (const void * A, const void * B)
{
    return ((*(Point*)A).X - (*(Point*)B).X);
}

int main()
{
    int N=0;
    int I,J,Tx,Ty,Tz;
    double D,Min;

    while (scanf("%d%d%d",&MyTree[N].X,&MyTree[N].Y,&MyTree[N].Z))
    {
        if (MyTree[N].X==0&&MyTree[N].Y==0&&MyTree[N].Z==0)
            break;
        N++;
    }
    qsort(MyTree,N,sizeof(Point),CMP);
    for (I=0; I<N; I++)
    {
        Min=255*255*255;
        for (J=I+1; J<N; J++)
        {
            Tx=MyTree[J].X-MyTree[I].X;
            if ( Tx > 10 )
                break;
            Ty=MyTree[J].Y-MyTree[I].Y;
            Tz=MyTree[J].Z-MyTree[I].Z;
            D=((double)(Tx)*(Tx)+(Ty)*(Ty)+(Tz)*(Tz));
            if (Min>D)
            {
                Min=D;
            }
        }
        for (J=I-1; J>=0; J--)
        {
            Tx=MyTree[I].X-MyTree[J].X;
            if ( Tx > 10 )
                break;
            Ty=MyTree[I].Y-MyTree[J].Y;
            Tz=MyTree[I].Z-MyTree[J].Z;
            D=((double)(Tx)*(Tx)+(Ty)*(Ty)+(Tz)*(Tz));
            if (Min>D)
            {
                Min=D;
            }
        }
        if (Min<100)
        {
            Statistic[(int)sqrt(Min)]++;
        }
    }
    printf("%4d%4d%4d%4d%4d%4d%4d%4d%4d%4d\n",Statistic[0],Statistic[1],Statistic[2],Statistic[3],Statistic[4],Statistic[5],Statistic[6],Statistic[7],Statistic[8],Statistic[9]);
    return 0;
}
