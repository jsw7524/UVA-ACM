#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char Alphabet[11]="dcba";
char Buffer[101];
int Len;
void Make(int Dep)
{
    int T,L;
    char Local[101];
    L=strlen(Buffer);
    memcpy(Local,Buffer,L+1);
    if (Dep<Len)
    {
        for (T=0; T<=L; T++)
        {
            strncpy(Buffer,Local,T);
            Buffer[T]=Alphabet[Dep];
            strncpy(Buffer+T+1,Local+T,L-T);
            Buffer[L+1]='\0';
            Make(Dep+1);
        }
    }
    else
    {
        puts(Buffer);
    }
    return;
}
int main()
{
    while(EOF!=scanf("%s",Alphabet))
    {
        Len=strlen(Alphabet);
        Buffer[0]='\0';
        Make(0);
        puts("");
    }
    return 0;
}
