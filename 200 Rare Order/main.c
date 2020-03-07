#include <stdio.h>
#include <stdlib.h>

typedef struct
{
    int Start;
    int End;
    char Letter;
} Index;

Index MyIndex[26];

char Graph[26][26];
char CurrentString[21];
char PreviousString[21]=" ";
char Alphabet[30];

int CMP (const void * A, const void * B)
{
    return ( (*(Index*)B).End - (*(Index*)A).End );
}

void TopologicalSort(int N)
{
    static int Count;
    int I;
    if (MyIndex[N].Start!=0)
        return;
    MyIndex[N].Start=++Count;
    MyIndex[N].Letter='A'+N;
    for (I=0; I<26; I++)
    {
        if (Graph[N][I]==1)
            TopologicalSort(I);
    }
    MyIndex[N].End=++Count;
    return;
}

int main()
{
    int I,J;
    while (NULL!=fgets(CurrentString,21,stdin))
    {
        if (CurrentString[0]=='#')
            break;
        for (J=0; CurrentString[J]>='A'&&CurrentString[J]<='Z'; J++)
        {
            Alphabet[CurrentString[J]-'A']=1;
        }
        I=0;
        while (1)
        {
            if (!(PreviousString[I]!='\n' && CurrentString[I]!='\n'))
            {
                I=-1;
                break;
            }
            if (PreviousString[I]!=CurrentString[I])
                break;
            I++;
        }
        if (I>=0)
        {
            if (PreviousString[I]!=' ')
            {
                Graph[PreviousString[I]-'A'][CurrentString[I]-'A']=1;
            }
        }
        strcpy(PreviousString,CurrentString);
    }
    for (I=0; I<26; I++)
    {
        if (Alphabet[I]==1)
            TopologicalSort(I);
    }
    qsort (MyIndex, 26, sizeof(Index), CMP);
    for (I=0; MyIndex[I].End!=0; I++)
    {
        printf("%c",MyIndex[I].Letter);
    }
    printf("\n");
    return 0;
}
