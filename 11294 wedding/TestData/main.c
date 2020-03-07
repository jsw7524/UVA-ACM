#include <stdio.h>
#include <stdlib.h>
#include <time.h>
int main()
{
    FILE *MyFile=fopen("MyTest.txt","w");
    int N, C, I, J, K;
    srand(time(NULL));
    N=rand()%30+1;
    C=rand()%(N*N);
    fprintf(MyFile,"%d %d\n", N, C);
    for (I = 0; I < C; I++)
    {
        J = rand()%N;
        fprintf(MyFile,"%d%c %d%c\n", J,(rand()%2==1?'h':'w'),
                (1+J + (rand() % (N-1)))%N,(rand()%2==1?'h':'w'));
    }
    fprintf(MyFile,"0 0");
    fclose(MyFile);
    return 0;
}
