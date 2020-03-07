#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int ES[26][26];
char Name[256];
int Map[26][26];
int Degree[26];

void Initial()
{
    int I,J,K;
    for (I=0;I<26;I++)
    {
        for (J=0;J<26;J++)
        {
            Map[I][J]=9999999;
        }
    }
    memset(Degree,0,4*26);
}

void BellmanFord()
{
    memcpy(ES,Map,4*26*26);
    int I,J,K;
    for (K=0; K<26; K++)
    {
        for (I=0; I<26; I++)
        {
            for (J=0; J<26; J++)
            {
                if ( ES[I][K]+ES[K][J] < ES[I][J] )
                {
                    ES[I][J]=ES[I][K]+ES[K][J];
                }
            }
        }
    }
}

int main()
{
    int I,J,K;
    int Len;
    int Sum=0;
    Initial();
    while (EOF!=scanf("%s",Name))
    {
        if (strcmp("deadend",Name))
        {
            Len=strlen(Name);
            Degree[Name[0]-'a']++;
            Degree[Name[Len-1]-'a']++;
            Map[Name[0]-'a'][Name[Len-1]-'a']=Len;
            Map[Name[Len-1]-'a'][Name[0]-'a']=Len;
            Sum+=Len;
        }
        else
        {
            for (I=0; I<26; I++)
            {
                if (Degree[I]%2==1)
                    break;
            }

            if (I==26)
            {
                printf("%d\n",Sum);
            }
            else
            {
                BellmanFord();
                for (J=I+1; J<26; J++)
                {
                    if (Degree[J]%2==1)
                        break;
                }
                printf("%d\n",Sum+ES[I][J]);
            }
            Sum=0;
            Initial();
        }
    }
    return 0;
}
