#include <stdio.h>
#include <stdlib.h>

int compareints (const void * a, const void * b)
{
    return ( *(int*)a - *(int*)b );
}

int MyCompareX(int Element,int Key)
{
    return (Element - Key);
}

int MyBinarySearch(int* Array,int Goal,int L,int R,int (*Com)(int Element,int Key))
{
    int M;
    while (L<R)
    {
        M=(L+R)/2+1;
        if ( Com(Array[M],Goal)==0 )
        {
            return M;
        }
        if ( Com(Array[M],Goal) > 0 )
        {
            R=M-1;
        }
        else
        {
            L=M;
        }
    }
    return R;
}

int values[] = { 1,3,5,7,9,11,13,15,17,19,21,23,25,27,29 };

int main ()
{
    int * pItem;
    int key = 7;

    while (scanf("%d",&key))
    {
        printf("%d\n",MyBinarySearch(values,key,0,sizeof(values)/4-1,MyCompareX));
    }

    /*
      pItem = (int*) bsearch (key, values, 6, sizeof (int), compareints);
      if (pItem!=NULL)
        printf ("%d is %dth in the array.\n",*pItem,(pItem-values));
      else
        printf ("%d is not in the array.\n",key);
    */
    return 0;
}
