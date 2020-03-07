#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int Ti[5];                        /*Elevators' speed*/
int Skyscraper[100][5];           /*Data of elevators stopped at a floor*/
int MinimumCost[100];             /*Minimum Cost to a floor*/
int MinimumCostElevator[100];     /*The elevator number to a floor at Minimum Cost*/
int Elevators[5][100];            /*Floors where a elevator stop */
/*Heap*/
int Heap_Index=-1;                /*The size of the heap*/
typedef struct
{
    int FloorNumber;
    int ElevatorNumber;
    int Value;
} Element;
Element MyHeap[10000];
void Heap_Swap(int A,int B)
{
    Element C;
    C=MyHeap[A];
    MyHeap[A]=MyHeap[B];
    MyHeap[B]=C;
}

int Heap_min(int A,int B)
{
    if (MyHeap[A].Value < MyHeap[B].Value)
        return A;
    return B;
}

int Heap_Parent(int C)
{
    return (C-1)/2;
}
int Heap_Adjust(int P)
{
    int T;
    if (2*P+2 <= Heap_Index )
    {
        if (MyHeap[P].Value < MyHeap[2*P+1].Value
                &&MyHeap[P].Value < MyHeap[2*P+2].Value )
        {
            return -1;
        }
        T=Heap_min(2*P+1,2*P+2);
        Heap_Swap(P,T);
        return T;
    }
    else if (2*P+1 <= Heap_Index )
    {
        if (MyHeap[P].Value < MyHeap[2*P+1].Value)
        {
            return -1;
        }
        Heap_Swap(P,2*P+1);
        return 2*P+1;
    }
    return -1;
}

void Heap_Insert(Element E)
{
    MyHeap[++Heap_Index]=E;
    if (Heap_Index<1)
        return;
    int T=Heap_Parent(Heap_Index);
    while (T>0)
    {
        if(-1==Heap_Adjust(T))
            break;
        T=Heap_Parent(T);
    }
    Heap_Adjust(T);
}
Element Heap_TopRemove()
{
    int T=0;
    Element Temp=MyHeap[0];
    MyHeap[0]=MyHeap[Heap_Index];
    Heap_Index--;
    while (-1!=(T=Heap_Adjust(T)));
    return Temp;
}
/**/
int main()
{
    int N,K,I,J,Floor,A,B,Temp=0;
    int CurrentFloor=0;
    int CurrentElevator=0;
    Element MyNode;
    while (EOF!=scanf("%d%d",&N,&K))
    {
        memset(Skyscraper,-1,4*5*100);
        memset(Elevators,-1,4*5*100);
        memset(MinimumCost,-1,4*100);
        memset(MinimumCostElevator,0,4*100);
        memset(MyHeap,0,10000*sizeof(Element));

        /*IO*/
        for (I=0; I<N; I++)
        {
            scanf("%d",&Ti[I]);
        }
        getchar();
        for (I=0; I<N; I++)
        {
            J=0;
            scanf("%d",&Floor);
            Elevators[I][J++]=Floor;
            Skyscraper[Floor][I]=1;
            while( '\n'!= getchar() )
            {
                scanf("%d",&Floor);
                Elevators[I][J++]=Floor;
                Skyscraper[Floor][I]=1;
            }
        }
        /**/

        /* Initialize the heap */
        for (I=0; I<N; I++)
        {
            if (Skyscraper[0][I]==1 )
            {
                for (J=0; Elevators[I][J]!=-1; J++)
                {
                    Temp=abs(Elevators[I][J]-0)*Ti[I]+0;
                    MyNode.Value=Temp;
                    MyNode.FloorNumber=Elevators[I][J];
                    MyNode.ElevatorNumber=I;
                    Heap_Insert(MyNode);
                }
            }
        }
        /**/

        /*A variant of the Dijikstra algorithm*/
        while (1)
        {
            /*Finds minimum cost*/
            do
            {
                if (Heap_Index==-1)
                {
                    printf("IMPOSSIBLE\n");
                    goto L1;
                }
                MyNode=Heap_TopRemove();
            }
            while ( MinimumCost[MyNode.FloorNumber]>-1);
            /**/

            /*Checks whether it arrives the goal*/
            if (MyNode.FloorNumber == K )
            {
                printf("%d\n",MyNode.Value);
                break;
            }
            /**/

            /*Updates current state information*/
            CurrentFloor=MyNode.FloorNumber;
            CurrentElevator=MyNode.ElevatorNumber;
            MinimumCost[CurrentFloor]=MyNode.Value;
            MinimumCostElevator[CurrentFloor]=CurrentElevator;
            /**/

            /*Inserts adjacent nodes*/
            for (I=0; I<N ; I++)
            {
                if (Skyscraper[CurrentFloor][I] == 1 )
                {
                    for (J=0; Elevators[I][J]!=-1; J++)
                    {
                        //if (MinimumCost[J]==-1) //??
                        {
                            Temp=abs(Elevators[I][J]-CurrentFloor)*Ti[I]+MinimumCost[CurrentFloor];
                            if (CurrentElevator!=I)
                                Temp+=60;
                            MyNode.Value=Temp;
                            MyNode.FloorNumber=Elevators[I][J];
                            MyNode.ElevatorNumber=I;
                            Heap_Insert(MyNode);
                        }
                    }
                }
            }
            /**/
        }
        /**/
L1:
        ;
    }
    return 0;
}
