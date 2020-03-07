#include <stdio.h>
#include <stdlib.h>

int ToDigit(char *Buffer,int J)
{
    int K=0;
    if (J!=0)
    {
        K=ToDigit(Buffer,J/10);
        Buffer[K-1]=J%10;
    }
    return K+1;
}

int Test(char *String, int ST)
{
    int I,J,K;
    char Buffer[64];
    for (I=0,K=0;String[I]!='\0';I++)
    {
        J=String[I]-'A'+ST;
        if (J==0)
        {
            Buffer[K++]=0;
        }
        else
        {
            K+=ToDigit(Buffer+K,J)-1;
        }
    }
    while (K>3)
    {
        K--;
        for (I=0;I<K;I++)
        {
            Buffer[I]=(Buffer[I]+Buffer[I+1])%10;
        }
        J=1;
    }
    if (Buffer[0]==1 &&Buffer[1]==0&&Buffer[2]==0)
    {
        return 1;
    }
    return 0;
}

int main()
{
    char Input[11];
    int I,J,K;
    while (EOF!=scanf("%s",Input))
    {
        for (I=1;I<=10000;I++)
        {
            if (Test(Input, I))
            {
                printf("%d\n",I);
                break;
            }
        }
        if (I>10000)
        {
            printf(":(\n");
        }
    }
    return 0;
}
