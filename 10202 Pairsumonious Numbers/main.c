#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int Solution[10];
int Array[45];
int Record[45];
int N;

int CMP (const void * A, const void * B)
{
    return ( *(int*)A - *(int*)B );
}

int Solve(int M)
{
    int I,J,K,L;
    if (M>=N)
    {
        return 1;
    }
    else
    {
        for (I=0,L=N*(N-1)/2; I<L; I++)
        {
            if (Record[I]==0)
            {
                break;
            }
        }
        Solution[M]=Array[I]-Solution[0];
        for (I=0; I<M; I++)
        {
            K=Solution[M]+Solution[I];
            for (J=0; J<N*(N-1)/2; J++)
            {
                if (Record[J]==0)
                {
                    if (K==Array[J])
                    {
                        Record[J]=1;
                        break;
                    }
                }
            }
            if (J==N*(N-1)/2)
                return 0;
        }
        return Solve(M+1);
    }
}

int main()
{
    int I,K,J;
    while (EOF!=scanf("%d",&N))
    {
        J=N*(N-1)/2;
        for (I=0; I<J; I++)
        {
            scanf("%d",&Array[I]);
        }
        qsort(Array,J,sizeof(int),CMP);

        for (I=2; I<J; I++)
        {
            memset(Record,0,4*J);
            Solution[1]=(Array[0]-Array[1]+Array[I])/2;
            Solution[0]=Array[0]-Solution[1];
            Solution[2]=Array[I]-Solution[1];
            Record[0]=1;
            Record[1]=1;
            Record[I]=1;
            if(1==Solve(3))
                break;
        }
        if (I==J || (Solution[0]+Solution[1])!=Array[0] || (Solution[2]+Solution[0])!=Array[1])
        {
            printf("Impossible\n");
        }
        else
        {
            for (K=0; K<N-1; K++)
            {
                printf("%d ",Solution[K]);
            }
            printf("%d\n",Solution[K]);
        }
    }
}
