#include <stdio.h>
#include <stdlib.h>
#include <math.h>
char Buffer[1000001];

int main()
{
    int I,J,Max;
    while (NULL!=gets(Buffer))
    {
        I=0;
        J=0;
        Max=0;
        while (Buffer[I]!='\0')
        {
            if (Buffer[I]==' ')
            {
                J++;
            }
            else
            {
                if (J>Max)
                {
                    Max=J;
                }
                J=0;
            }
            I++;
        }
        printf("%.0f\n",ceil(log(Max)/log(2)));
    }
    return 0;
}
