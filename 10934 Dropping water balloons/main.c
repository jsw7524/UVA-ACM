#include <stdio.h>
#include <stdlib.h>

int DP_Table[1000][1000];

unsigned long long int Computing(int Balloons,unsigned long long int Height)
{
    if (DP_Table[Balloons][Height]!=0)
    {
        return DP_Table[Balloons][Height];
    }
    int T,Temp1,Temp2,Min=Height,J;
    if (Balloons==1)
    {
        DP_Table[Balloons][Height]=Height;
        return Height;
    }
    else if (Height==1)
    {
        DP_Table[Balloons][Height]=1;
        return 1;
    }
    else
    {
        for ( T=1;T<=Height;T++ )
        {
            Temp1=Computing(Balloons,Height-T); /*UP*/
            Temp2=Computing(Balloons-1,T-1); /*DOWN*/
            J=Temp1>Temp2?Temp1+1:Temp2+1;
            if (J < Min)
            {
                Min=J;
            }
        }
        DP_Table[Balloons][Height]=Min;
        return Min;
    }
}

int main()
{
    FILE * MyFile;
    int I,J,K;

    MyFile=fopen("DP_Table.txt","w+");

    printf("%lld\n",Computing(10,100));
    for (I=0;I<200;I++)
    {
        for ( K=1;K<200;K++)
        {
            fprintf(MyFile,"%5d",DP_Table[I][K]);
        }
        fprintf(MyFile,"\n");
    }
    fclose(MyFile);
    /*
    int K;
    unsigned long long int N;
    while (scanf("%d%ld",&K,&N))
    {
        if (K==0)
        {
            break;
        }
        Computing(K,N);
    }
    printf("Hello world!\n");
    */
    return 0;
}
