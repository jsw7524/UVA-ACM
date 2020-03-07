#include <stdio.h>
#include <stdlib.h>


int main()
{
    int A,B,C;

    while (scanf("%d%d",&A,&B))
    {
        if (A==-1&&B==-1)
            break;

        if (B>A)
        {
            C=A;
            A=B;
            B=C;
        }

        if (A-B > (100+B)-A)
        {
            printf("%d\n",(100+B)-A);
        }
        else
        {
            printf("%d\n",A-B);
        }
    }
    return 0;
}
