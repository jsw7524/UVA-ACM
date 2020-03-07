#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long long int MyHashTableA[10000];   /*A���X��Hash Table*/
long long int MyHashTableB[10000];   /*B���X��Hash Table*/

char Input[500];   /*Input�r��*/

/*Hash���J����*/
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
/*Hash�䤸��*/
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
    int MyTemp;       /*��J�Ȧs*/
    int BElementsInA; /*B���X��A���X�涰���j�p*/
    int Miss;         /*B���X�O�_��A���X�S��������*/
    int SizeB,SizeA;  /*A�BB���X���j�p*/
    char *P;          /*�r�����*/

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


        /*ŪA*/
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

        /*ŪB*/
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
        if (SizeA==0&&SizeB!=0)  /*A�O�Ŷ��X*/
        {
            printf("A is a proper subset of B\n");
        }
        else if (SizeA!=0&&SizeB==0) /*B�O�Ŷ��X*/
        {
            printf("B is a proper subset of A\n");
        }
        else if (SizeA!=0&&BElementsInA==0)  /*B�S������A������*/
        {
            printf("A and B are disjoint\n");
        }
        else if (SizeA==BElementsInA) /*A���j�p�PB��A�涰�j�p�@��*/
        {
            if (Miss==0)  /*B�������AA����*/
            {
                printf("A equals B\n");
            }
            else            /*B��A�S��������*/
            {
                printf("A is a proper subset of B\n");
            }
        }
        else if (SizeA>BElementsInA)   /*A���j�p��B��A�涰�j�p�٤j*/
        {
            if (Miss==0)  /*B�������AA����*/
            {
                printf("B is a proper subset of A\n");
            }
            else  /*B��A�S��������*/
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
