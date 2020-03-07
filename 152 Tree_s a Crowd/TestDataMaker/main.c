#include <stdio.h>
#include <stdlib.h>
#include <time.h>

FILE *MyFile;

int main()
{
    srand(time(NULL));
    int I;
    MyFile=fopen("Test.txt","w");
    for (I=0;I<200;I++)
    {
        fprintf(MyFile,"%d %d %d\n",rand()%256,rand()%256,rand()%256);
    }
    fprintf(MyFile,"%d %d %d\n",0,0,0);
    fclose(MyFile);
    return 0;
}
