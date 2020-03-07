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
int Count1;
int Count2;
Task MyTask1[101];
Task MyTask2[101];
char Graph[101][101];
char TransposeGraph[101][101];

char OutputBuffer[101][101];
char * (Order)[101];
int OB_Index;

int CMP1 (const void * A, const void * B)
{
    return ( (*(Task*)B).End - (*(Task*)A).End );
}

int CMP2 (const void * A, const void * B)
{
    return ( (*(char*)A) - (*(char*)B) );
}

int CMP3 (const void * A, const void * B)
{
    return ( *(*(char**)A) - *(*(char**)B) );
}

void FirstDFS(int P)
{
    int I;
    if (MyTask1[P].Start!=0)
        return;
    MyTask1[P].Start=++Count1;
    MyTask1[P].Letter=P;
    for (I=1; I<=26; I++)
    {
        if (Graph[P][I]==1)
            FirstDFS(I);
    }
    MyTask1[P].End=++Count1;
    return;
}

void SecondDFS(int P)
{
    int I;
    if (MyTask2[P].Start!=0)
        return;
    OutputBuffer[OB_Index][P]=P+'A'-1;
    MyTask2[P].Start=++Count2;
    MyTask2[P].Letter=P;
    for (I=1; I<=26; I++)
    {
        if (TransposeGraph[P][I]==1)
            SecondDFS(I);
    }
    MyTask2[P].End=++Count2;
    return;
}

int main()
{
    int I,S,F=1;
    char Options[5],D;
    while (EOF!=scanf("%d",&N))
    {
        if (N==0)
            break;
        if (F==0)
        {
            printf("\n");
        }
        getchar();
        memset(Graph,0,101*101);
        memset(TransposeGraph,0,101*101);
        memset(MyTask1,0,sizeof(Task)*101);
        memset(MyTask2,0,sizeof(Task)*101);
        memset(OutputBuffer,127,101*101);
        for (I=0; I<N; I++)
        {
            scanf("%c %c %c %c %c %c",&Options[0],&Options[1],&Options[2],&Options[3],&Options[4],&D);
            Graph[D-'A'+1][Options[0]-'A'+1]=1;
            Graph[D-'A'+1][Options[1]-'A'+1]=1;
            Graph[D-'A'+1][Options[2]-'A'+1]=1;
            Graph[D-'A'+1][Options[3]-'A'+1]=1;
            Graph[D-'A'+1][Options[4]-'A'+1]=1;
            TransposeGraph[Options[0]-'A'+1][D-'A'+1]=1;
            TransposeGraph[Options[1]-'A'+1][D-'A'+1]=1;
            TransposeGraph[Options[2]-'A'+1][D-'A'+1]=1;
            TransposeGraph[Options[3]-'A'+1][D-'A'+1]=1;
            TransposeGraph[Options[4]-'A'+1][D-'A'+1]=1;
            getchar();
        }
        for (I=26; I>0; I--)
        {
            Order[I]=OutputBuffer[I];
            if (Graph[I][I]==1)
                FirstDFS(I);
        }
        qsort (MyTask1+1, 26, sizeof(Task), CMP1);

        for (OB_Index=0,I=1;MyTask1[I].End!=0;I++)
        {
            if (MyTask2[MyTask1[I].Letter].Start==0)
            {
                OB_Index++;
                SecondDFS(MyTask1[I].Letter);
                qsort (OutputBuffer[OB_Index], 27, sizeof(char), CMP2);
            }
        }
        qsort (Order+1, 26, sizeof(char*), CMP3);
        for (I=1;*Order[I]!=127;I++)
        {

            for (S=0;Order[I][S]!=127;S++)
            {
                printf("%c",Order[I][S]);
                if (Order[I][S+1]!=127)
                {
                    printf(" ");
                }
            }
            printf("\n");

        }
        F=0;
    }
    return 0;
}
