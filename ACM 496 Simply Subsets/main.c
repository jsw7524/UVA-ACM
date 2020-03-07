#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long long int MyHashTableA[10000];   /*A集合的Hash Table*/
long long int MyHashTableB[10000];   /*B集合的Hash Table*/

char Input[500];   /*Input字串*/

/*Hash插入元素*/
void MyHash_Insert(long long int N,long long int *MyHashTable,int I)
{
    long long int MyTemp=((N+I*I+2713)*881)%9967;
    if (MyHashTable[MyTemp]==-1)
    {
        MyHashTable[MyTemp]=N;
    }
    else
    {
        MyHash_Insert(N,MyHashTable,I+1);
    }
}
/*Hash找元素*/
int MyHash_Find(long long int N,long long int *MyHashTable,int I)
{
    long long int MyTemp=((N+I*I+2713)*881)%9967;
    if (MyHashTable[MyTemp]==-1)
    {
        return 0;
    }
    else if (MyHashTable[MyTemp]==N)
    {
        return 1;
    }
    else
    {
        return MyHash_Find(N,MyHashTable,I+1);
    }
}

int main()
{
    int MyTemp;       /*輸入暫存*/
    int BElementsInA; /*B集合跟A集合交集的大小*/
    int Miss;         /*B集合是否有A集合沒有的元素*/
    int SizeB,SizeA;  /*A、B集合的大小*/
    char *P;          /*字串指標*/

    int DD;
    while (NULL!=gets(Input))
    {
        memset(MyHashTableA,255,8*10000);
        memset(MyHashTableB,255,8*10000);
        DD=0;
        SizeA=0;
        SizeB=0;
        BElementsInA=0;
        Miss=0;


        /*讀A*/
        P=strtok(Input," ");
        while (P!=NULL)
        {
            sscanf(P,"%d",&MyTemp);
            if (MyHash_Find(MyTemp,MyHashTableA,0)==0)
            {

                MyHash_Insert(MyTemp,MyHashTableA,0);
                SizeA++;
            }
            P=strtok(NULL," ");
        }

        /*讀B*/
        gets(Input);
        P=strtok(Input," ");
        while (P!=NULL)
        {
            sscanf(P,"%d",&MyTemp);
            if (MyHash_Find(MyTemp,MyHashTableB,0)==0)
            {
                MyHash_Insert(MyTemp,MyHashTableB,0);
                SizeB++;
                if (MyHash_Find(MyTemp,MyHashTableA,0)==1)
                {
                    BElementsInA++;
                }
                else
                {
                    Miss=1;
                }
            }
            P=strtok(NULL," ");
        }
        if (SizeA==0&&SizeB!=0)  /*A是空集合*/
        {
            printf("A is a proper subset of B\n");
        }
        else if (SizeA!=0&&SizeB==0) /*B是空集合*/
        {
            printf("B is a proper subset of A\n");
        }
        else if (SizeA!=0&&BElementsInA==0)  /*B沒有任何A的元素*/
        {
            printf("A and B are disjoint\n");
        }
        else if (SizeA==BElementsInA) /*A的大小與B跟A交集大小一樣*/
        {
            if (Miss==0)  /*B的元素，A都有*/
            {
                printf("A equals B\n");
            }
            else            /*B有A沒有的元素*/
            {
                printf("A is a proper subset of B\n");
            }
        }
        else if (SizeA>BElementsInA)   /*A的大小比B跟A交集大小還大*/
        {
            if (Miss==0)  /*B的元素，A都有*/
            {
                printf("B is a proper subset of A\n");
            }
            else  /*B有A沒有的元素*/
            {
                printf("I'm confused!\n");
            }
        }
        else
        {
            printf("I miss some cases!\n");
        }
    }
    return 0;
}
