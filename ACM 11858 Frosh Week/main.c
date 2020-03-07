#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int Array[1000001];
int Temp[1000001];
unsigned long long Merge(int L,int R)
{
    int Lptr=L;
    int Rptr=(L+R)/2+1;
    int Ti=0;
    unsigned long long Disorder=0;
    if (L==R)
    {
        return 0;
    }
    Disorder+=Merge(L,(L+R)/2)+Merge((L+R)/2+1,R);
    while (Lptr<(L+R)/2+1&&Rptr<R+1)
    {
        if (Array[Lptr]<=Array[Rptr])
        {
            Temp[Ti]=Array[Lptr];
            Ti++;
            Lptr++;
        }
        else
        {
            Temp[Ti]=Array[Rptr];
            Disorder+=((L+R)/2+1)-Lptr;
            Ti++;
            Rptr++;
        }
    }
    while (Lptr<(L+R)/2+1)
    {
        Temp[Ti]=Array[Lptr];
        Ti++;
        Lptr++;
    }
    while (Rptr<R+1)
    {
        Temp[Ti]=Array[Rptr];
        Ti++;
        Rptr++;
    }
    memcpy(Array+L,Temp,4*(R-L+1));
    return Disorder;
}
int main()
{
    int N,T;
    while (EOF!=scanf("%d",&N))
    {
        for (T=0;T<N;T++)
            scanf("%d",&Array[T]);
        printf("%lld\n",Merge(0,T-1));
    }
    return 0;
}
