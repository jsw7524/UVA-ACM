#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char Input[1001];
int Len;
int DPTable[1000];
int MatchTable[26][1001];
int Index[26];

void Preprocessing()
{
    int L=Len-1;
    while (L>=0)
    {
        MatchTable[Input[L]-'a'][Index[Input[L]-'a']++]=L;
        L--;
    }
    return;
}

int IsPalindrome( int L ,int R )
{
    while (L<R)
    {
        if (Input[L]!=Input[R])
        {
            return 0;
        }
        L++;
        R--;
    }
    return 1;
}

int main()
{
    int N,I,J,K,Temp,Min;
    scanf("%d",&N);
    while (N--)
    {
        scanf("%s",Input);
        memset(DPTable,0,4*1000);
        memset(MatchTable,-1,4*26*1001);
        memset(Index,0,4*26);
        Len=strlen(Input);
        Preprocessing();
        for (I=Len-1; I>=0; I--)
        {
            Min=Len;
            J=0;
            K=MatchTable[Input[I]-'a'][J];
            while (K>=I)
            {
                if (IsPalindrome(I,K))
                {
                    Temp=1+DPTable[K+1];
                    if (Temp < Min )
                    {
                        Min=Temp;
                    }
                }
                J++;
                K=MatchTable[Input[I]-'a'][J];
            }
            DPTable[I]=Min;
        }
        printf("%d\n",DPTable[0]);
    }
    return 0;
}
