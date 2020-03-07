#include <stdio.h>
#include <stdlib.h>

int PointX,PointY;

int Check(int CenterX, int CenterY, int K)
{
    int Temp=0;
    if ( K >= 1)
    {
        if ((CenterX-K)<=PointX && (CenterX+K)>=PointX && (CenterY-K)<=PointY && (CenterY+K)>=PointY )
        {
            Temp=1;
        }
        if (PointX <= CenterX && PointY <= CenterY)
            Temp+=Check(CenterX-K, CenterY-K, K/2);
        if (PointX <= CenterX && PointY >= CenterY)
            Temp+=Check(CenterX-K, CenterY+K, K/2);
        if (PointX >= CenterX && PointY <= CenterY)
            Temp+=Check(CenterX+K, CenterY-K, K/2);
        if (PointX >= CenterX && PointY >= CenterY)
            Temp+=Check(CenterX+K, CenterY+K, K/2);
    }
    return Temp;
}

int main()
{
    int K;
    while (EOF!=scanf("%d%d%d",&K,&PointX,&PointY))
    {
        if (K==0)
            break;
        printf("%3d\n",Check(1024, 1024, K));
    }
    return 0;
}
