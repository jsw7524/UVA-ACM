
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct
{
    int X;
    int Y;
} Edge;

Edge MyEdge[100001];
Edge MyInDegree[100001];
int BitMap[100001];
int MyIndex[100001];

int MyCMP1(void *A, void *B)
{
    return ((Edge*)A)->X-((Edge*)B)->X;
}
int MyCMP2(void *A, void *B)
{
    return ((Edge*)A)->Y-((Edge*)B)->Y;
}
void DFS(int R)
{
    int I,J;
    if (BitMap[R]==0)
    {
        BitMap[R]=1;
        for (I=(MyIndex[R]),J=MyIndex[R+1]; I<J; I++)
        {
            DFS(MyEdge[I].Y);
        }
    }
    return;
}

int main()
{
    int T,N,M,X,Y;
    int I,J,K;
    scanf("%d",&T);
    while (T--)
    {
        scanf("%d%d",&N,&M);
        memset(MyInDegree,0,8*100001);
        memset(MyEdge,-1,8*100001);
        memset(BitMap,0,4*100001);
        memset(MyIndex,0,4*100001);
        for (I=1; I<=N; I++)MyInDegree[I].X=I;
        for (I=0,J=0; J<M; I++,J++)
        {
            scanf("%d%d",&X,&Y);
            MyEdge[I].X=X;
            MyEdge[I].Y=Y;
            MyInDegree[Y].Y++;
        }
        qsort(MyEdge,M,sizeof(Edge),MyCMP1);
        qsort(MyInDegree+1,N,sizeof(Edge),MyCMP2);
        MyIndex[MyEdge[0].X]=0;
        for (I=1; I<M; I++)
        {
            if (MyEdge[I-1].X!=MyEdge[I].X)
            {
                MyIndex[MyEdge[I].X]=I;
            }
        }
        MyIndex[N]=M;
        for (I=1,K=0; I<N; I++)
        {
            if (BitMap[MyInDegree[I].X]==0)
            {
                DFS(MyInDegree[I].X);
                K++;
            }
        }
        printf("%d\n",K);
    }
    return 0;
}
