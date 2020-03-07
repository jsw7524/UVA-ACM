#include <stdio.h>
#include <stdlib.h>

char P[100001];
char R[100001];
int Pi[100001];

void Preprocessing(int L)
{
    int I,J,K;
    K=0;
    for (I=2; I<=L; I++)
    {
        while (K>0 && P[K+1] != P[I] )K=Pi[K];
        if (P[K+1] == P[I])K=K+1;
        Pi[I]=K;
    }
}

void Reverse(int L)
{
    int I,J;
    for (I=1,J=L; I<=L; I++,J--)
    {
        P[I]=R[J];
    }
    P[I]='\0';
}

int main()
{
    int I,Q,K;
    int Len;
    P[0]='#';
    R[0]='#';
    while (EOF!=scanf("%s",R+1))
    {
        Len=strlen(R)-1;
        Reverse(Len);
        Preprocessing(Len);
        for (I=1,Q=0; I<Len; I++)
        {
            while (Q>0 && R[I] != P[Q+1])Q=Pi[Q];
            if (R[I] == P[Q+1])Q+=1;
        }
        printf("%s",R+1);
        for (I-=(Q+1); I>0; I--)
        {
            printf("%c",R[I]);
        }
        printf("\n");
    }
    return 0;
}
