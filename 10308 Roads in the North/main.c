#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Node Node;
struct Node
{
    int Destination;
    unsigned long long int Length;
    Node *Next;
};

Node AdjacentList[10001];
unsigned long long int Height[10001];
unsigned char Record[10001];
void InsertNode(int S, int D, unsigned long long int L);
void DeleteNode();
unsigned long long int TreeHeight(int N);
unsigned long long int TheMostRemote(int N);

unsigned long long int TreeHeight(int N)
{
    unsigned long long int H=0;
    unsigned long long int Max = 0;
    Node *Ptr = &AdjacentList[N];
    Record[N]=1;
    while (Ptr->Destination != 0)
    {
        if (Record[Ptr->Destination]==0)
        {
            H = TreeHeight(Ptr->Destination) + Ptr -> Length;
        }
        if (H > Max)
        {
            Max = H;
        }
        Ptr=Ptr->Next;
        if (Ptr==NULL)
            break;
    }
    Height[N]= Max;
    return Max;
}

unsigned long long int TheMostRemote(int N)
{
    unsigned long long int S = 0, Subtree = 0;
    unsigned long long int Max1 = 0,Max2 =0;
    unsigned long long int I;
    Node *Ptr = &AdjacentList[N];
    Record[N] = 1;
    while (Ptr->Destination != 0)
    {
        if (Record[Ptr->Destination] == 0)
        {
            S = TheMostRemote(Ptr->Destination);
            if (S > Subtree)
            {
                Subtree = S;
            }
            I = Height[Ptr->Destination] + Ptr->Length;
            if (I > Max2)
            {
                Max2=I;
            }
            if (I > Max1)
            {
                Max2=Max1;
                Max1=I;
            }
        }
        Ptr=Ptr->Next;
        if (Ptr==NULL)
            break;
    }
    return (Subtree>(Max1+Max2)?Subtree:(Max1+Max2));
}

void InsertNode(int S, int D, unsigned long long int L)
{
    Node *Ptr=&AdjacentList[S];
    if (AdjacentList[S].Destination==0)
    {
        AdjacentList[S].Destination=D;
        AdjacentList[S].Length=L;
    }
    else
    {
        while (Ptr->Next!=NULL)
        {
            Ptr=Ptr->Next;
        }
        Ptr->Next=(Node*)calloc(1,sizeof(Node));
        Ptr->Next->Destination=D;
        Ptr->Next->Length=L;
    }
    return;
}

void DeleteNode()
{
    int I;
    Node *Ptr,*Previous;
    for (I=0; I<10001; I++)
    {
        Ptr=AdjacentList[I].Next;
        while (Ptr!=NULL)
        {
            Previous=Ptr;
            Ptr=Ptr->Next;
            free(Previous);
        }
    }
}

int main()
{
    int S=0,D=0,C=0,F=0;
    char MyBuffer[128];
    unsigned long long L;
    while (1)
    {
        F=0;
        fgets(MyBuffer,128,stdin);

        if (MyBuffer[0]!='\n')
        {
            sscanf(MyBuffer,"%d%d%llu",&S,&D,&L);
            InsertNode(S,D,L);
            InsertNode(D,S,L);
            if (feof(stdin))
            {
                TreeHeight(S);
                memset((void*)Record,0,10001);
                printf("%llu\n",TheMostRemote(S));
                break;
            }
        }
        else
        {
            /*End of the input of this case*/
            TreeHeight(S);
            memset((void*)Record,0,10001);
            printf("%llu\n",TheMostRemote(S));
            DeleteNode();
            memset((void*)AdjacentList,0,10001*sizeof(Node));
            memset((void*)Height,0,10001*sizeof(int));
            memset((void*)Record,0,10001);
            S = D = C = 0;
        }
    }
    return 0;
}
