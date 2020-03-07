#include <stdio.h>
#include <stdlib.h>

int main()
{
    double N,P;
    while (EOF!=scanf("%lf%lf",&N,&P))
    {
        printf("%.0f\n",pow(P,1.0/N));
    }
    return 0;
}
