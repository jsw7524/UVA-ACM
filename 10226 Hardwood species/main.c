
/* useing search tree to sovle*/

#include <stdio.h>
#include <stdlib.h>

typedef struct Node
{
    struct Node *Next[128];
    int frequency;
    char Ch;
} TreeNode;

double Total;
char Blank[31];
char Buffer[31];
int BufferIndex;
TreeNode MyRoot;


void MakeTree(TreeNode *CurrentNode, char (*S), int Pos)
{
    int I,J,K;
    if ( CurrentNode->Next[S[Pos]] == NULL)
    {
        CurrentNode->Next[S[Pos]]=(TreeNode*)malloc(sizeof(TreeNode));
        for (I=0; I<128; I++)
        {
            CurrentNode->Next[S[Pos]]->Next[I]=NULL;
        }
        CurrentNode->Next[S[Pos]]->frequency=0;
        CurrentNode->Next[S[Pos]]->Ch=S[Pos];
    }
    if (S[Pos]!='\0')
        MakeTree(CurrentNode->Next[S[Pos]],S,Pos+1);
    else
        CurrentNode->Next[S[Pos]]->frequency++;
    return;
}

void TravelTree(TreeNode *CurrentNode)
{
    int I,J,K;
    if (CurrentNode->Ch!='\0')
    {
        for (I=0; I<128; I++)
        {
            if (CurrentNode->Next[I]!=NULL)
            {
                Buffer[BufferIndex++]=CurrentNode->Ch;
                TravelTree(CurrentNode->Next[I]);
                Buffer[BufferIndex--]='\0';
            }
        }
    }
    else
    {
        printf("%s %.4f\n",Buffer+1,(CurrentNode->frequency/Total)*100);
    }
    return;
}

int main()
{
    int N,I,J,K;
    scanf("%d",&N);
    Blank[0]=getchar();
    K=0;
    while (N--)
    {
        Total=0.0;
        BufferIndex=0;
        MyRoot.Ch='@';
        MyRoot.frequency=0;
        for (I=0;I<128;I++)MyRoot.Next[I]=NULL;
        I=0;
        Blank[0]=getchar();  /*Only in Windows?*/
        while (EOF!=(Blank[0]=getchar()))
        {
            if ( Blank[0]== '\n' )
            {
                ungetc(Blank[0],stdin);
                /*Output answer*/
                break;
            }
            ungetc(Blank[0],stdin);
            /*get Input*/
            gets(Blank);

            /*main algorithm*/
            Total++;
            MakeTree(&MyRoot,Blank,0);
            I++;
        }
        if (K!=0)
            printf("\n");
        K=1;
        TravelTree(&MyRoot);
    }
    return 0;
}
