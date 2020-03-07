#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void Preprocessing();
int IsPalindrome( int L ,int R );
int DFS( int S , int P );

char Input[1001];
int Len;
int Table[26][1001];
int Index[26];
int GlobalMin;

void Preprocessing()
{
    int L=Len-1;
    while (L>=0)
    {
        Table[Input[L]-'a'][Index[Input[L]-'a']++]=L;
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

int DFS( int S , int P)
{
    int Min=Len;
    int E,K,Temp;
    if (Input[S]!='\0')
    {
        if (P>=GlobalMin)
        {
            return Len;
        }
        E=0;
        K=Table[Input[S]-'a'][E];
        while (K!=-1 && K>=S )
        {
            if (IsPalindrome(S,K))
            {

                Temp=DFS(S+(K-S+1),P+1)+1;
                if (Temp<Min)
                {
                    Min=Temp;
                }
            }
            E++;
            K=Table[Input[S]-'a'][E];
        }
        return Min;
    }
    if (GlobalMin>P)
    {
        GlobalMin=P;
    }
    return 0;
}

int main()
{
    int N;
    scanf("%d",&N);
    while (N--)
    {
        scanf("%s",Input);
        Len=strlen(Input);
        memset(Table,-1,4*26*1001);
        memset(Index,0,4*26);
        GlobalMin=Len;
        Preprocessing();
        printf("%d\n",DFS(0,0));
    }
    return 0;
}
