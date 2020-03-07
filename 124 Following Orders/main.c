#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int Constraint[26][26];
int Literal[26];
int ConstraintIndex[26];
int Number;
int Record[26];
char Buffer[32];

int CMP(void *A, void *B)
{
    return (*((int*)A)) - (*((int*)B));
}

int CheckPredecessor(int A)
{
    int I, J, K;
    for (I = 0; I < ConstraintIndex[A-'a']; I++)
    {
        if (Record[Constraint[A - 'a'][I] - 'a'] == 0)
        {
            return 0;
        }
    }
    return 1;
}

int Backtracking(int N)
{
    int I, J, K;
    if (N == Number)
    {
        Buffer[N]='\0';
        printf("%s\n",Buffer);
    }
    else
    {
        for (I = 0; I < Number; I++)
        {
            if (Record[Literal[I]-'a'] == 0)
            {
                if (CheckPredecessor(Literal[I]))
                {
                    Record[Literal[I]-'a'] = 1;
                    Buffer[N] = Literal[I];
                    Backtracking(N+1);
                    Record[Literal[I]-'a'] = 0;
                }
            }
        }
    }
    return 0;
}
int main()
{
    int I, J, K, L=1;
    while (1)
    {
        /*Input*/
        K = 0;
        while (1)
        {
            I = getchar();
            if (I == EOF)return 0;
            if (I == '\n')break;
            if (I == ' ')continue;
            Literal[K] = I;
            K++;
        }
        if (L == 0)printf("\n");
        else L=0;
        Number = K;
        qsort(Literal,K,4,CMP);
        memset(ConstraintIndex,0,4*26);
        memset(Record,0,4*26);
        while (1)
        {
            I = getchar();
            getchar();
            J = getchar();
            Constraint[J-'a'][ConstraintIndex[J-'a']]=I;
            ConstraintIndex[J-'a']++;
            K = getchar();
            if (K == '\n')break;
        }
        /*Algorithm*/
        Backtracking(0);
    }
    return 0;
}
