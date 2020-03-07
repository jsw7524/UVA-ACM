#include <stdio.h>
#include <stdlib.h>

char Buffer[102];

int main()
{
    int Sum,I;
    while (EOF!=scanf("%s",Buffer))
    {
        if (Buffer[0]=='0')
            break;

        Sum=Buffer[0]-'0';
        for (I=1;Buffer[I]!='\0';I++)
        {
            Sum=(((Sum*10)%17)+(Buffer[I]-'0'))%17;
        }
        if (Sum==0)
            printf("1\n");
        else
            printf("0\n");
    }
    return 0;
}
