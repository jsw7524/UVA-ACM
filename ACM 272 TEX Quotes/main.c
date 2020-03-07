#include<iostream>
#include<cstdio>
using namespace std;

main()
{
    char c;
    int num=0;

    while((c=getchar())!=EOF)
    {
        if(c=='\"' )
        {
            if(num%2==0)
                cout << "``";
            else
                cout << "''";
            num++;
        }
        else
            cout << c ;
    }
    return 0;
}
