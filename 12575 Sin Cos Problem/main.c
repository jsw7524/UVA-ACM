#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define PI acos(-1)

int main()
{
    int T;
    double Theta,Maximum,A,B;
    scanf("%d",&T);
    while (T--)
    {
        scanf("%lf%lf",&A,&B);
        Theta=atan2(A,B);
        if (Theta<0.0)Theta+=2*PI;
        Maximum=A*sin(Theta)+B*cos(Theta);
        printf("%.2f %.2f\n",Theta,Maximum);
    }
    return 0;
}
