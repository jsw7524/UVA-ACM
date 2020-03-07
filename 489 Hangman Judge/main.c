#include <stdio.h>
#include <stdlib.h>

char Answer[256],Reply[256];
char AnswerAlphabet[26];
char ReplyAlphabet[26];

int main()
{
    int N,Hangman;
    int I,Total;
    register char C;
    Label_1:
    while (1)
    {
        scanf("%d",&N);
        if (N==-1)
            break;
        scanf("%s%s",Answer,Reply);
        printf("Round %d\n",N);
        Hangman=0;
        Total=0;

        for (I=0; I<26; I++)
        {
            AnswerAlphabet[I]=0;
            ReplyAlphabet[I]=0;
        }
        for (I=0; '\0'!=(C=Answer[I]); I++)
        {
            C-='a';
            if (AnswerAlphabet[C]==0)
            {
                AnswerAlphabet[C]=1;
                Total++;
            }
        }
        for (I=0; '\0'!=(C=Reply[I]); I++)
        {
            C-='a';
            if (ReplyAlphabet[C]==0)
            {
                ReplyAlphabet[C]=1;
                if (AnswerAlphabet[C]==0)Hangman++;
                else
                {
                    AnswerAlphabet[C]=0;
                    Total--;
                }
            }
            if (Hangman>=7)
            {
                printf("You lose.\n");
                goto Label_1;
            }
            if (Total==0)
            {
                printf("You win.\n");
                goto Label_1;
            }
        }
        printf("You chickened out.\n");
    }
    return 0;
}
