#include<stdio.h>
#include<stdlib.h>
int N[801][335]= {0},last[801]= {0};
int DP ()
{
    N[0][0]=1;
    int a,b,c;
    for(a=2; a<=800; a++)
    {
        for(b=0; b<last[a-1]+2; b++)
        {
            N[a][b]+=(N[a-1][b]+N[a-2][b])*(a-1);
            N[a][b+1]+=N[a][b]/1000000;
            N[a][b]%=1000000;
        }
        for(b=last[a-1]+2; b>=0; b--)
            if(N[a][b]!=0)
            {
                last[a]=b;
                break;
            }
    }
}
main()
{
    int n;
    DP();
    while(scanf("%d",&n)==1&&n!=-1)
    {
        int a,b;
        if(n==1) printf("0\n");
        else
        {
            printf("%d",N[n][last[n]]);
            for(a=last[n]-1; a>=0; a--)
                printf("%06d",N[n][a]);
            printf("\n");
        }
    }
    return 0;
}
