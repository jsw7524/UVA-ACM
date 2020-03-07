#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef struct
{
    int Start;
    int End;
    int Letter;
} Task;
int M,N;
int Count;
Task MyTask[101];
char Graph[101][101];

int CMP (const void * A, const void * B)
{
    return ( (*(Task*)B).End - (*(Task*)A).End );
}
void TopologicalSort(int P)
{
    int I;
    if (MyTask[P].Start!=0)
        return;
    MyTask[P].Start=++Count;
    MyTask[P].Letter=P;
    for (I=1; I<=N; I++)
    {
        if (Graph[P][I]==1)
            TopologicalSort(I);
    }
    MyTask[P].End=++Count;
    return;
}

int main()
{
    int I,S,D;
    while (EOF!=scanf("%d%d",&N,&M))
    {
        if (N==0&&M==0)
            break;
        memset(Graph,0,101*101);
        memset(MyTask,0,sizeof(Task)*101);
        Count=0;
        for (I=0; I<M; I++)
        {
            scanf("%d%d",&S,&D);
            Graph[S][D]=1;
        }
        for (I=N; I>=1; I--)
        {
            TopologicalSort(I);
        }
        qsort (MyTask+1, N, sizeof(Task), CMP);
        for (I=1; I<N; I++)
        {
            printf("%d ",MyTask[I].Letter);
        }
        printf("%d\n",MyTask[N].Letter);
    }
    return 0;
}
