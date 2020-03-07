#include <stdio.h>
#include <math.h>
#include <time.h>

#define N 2147483647
unsigned nTable[67108864];
#define SET(n) nTable[n>>5] |= (1U<<(n&31U))
#define CHK(n) ((nTable[n>>5] &  (1U<<(n&31U))) != 0U)

int main()
{

    clock_t t1, t2;

    t1 = clock();



    unsigned i, j, i2, nGap, nSqrt = 46341;
    for(i = 5 , nGap=2; i<=nSqrt ; i+=nGap, nGap^=6)
        if(!CHK(i))
            for(j = i*i , i2=i+i ; j<=N ; j+=i2)
                SET(j);


    t2 = clock();
    printf("%lf\n", (t2-t1)/(double)(CLOCKS_PER_SEC));
    while(scanf("%d",&i)){
        if(i==2 || i==3) puts("質數");
        else if(i%2==0 || i%3==0 || CHK(i)) puts("非質數");
        else puts("質數");
    }
    return 0;
}
