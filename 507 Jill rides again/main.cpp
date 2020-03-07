#include<iostream>
using namespace std;

int main()
{
	int group,route=1;
	cin>>group;

	for(int a=0;a<group;a++)
	{
		int number,stop[20000]={0};
		cin>>number;

		for(int b=0;b<number-1;b++)
			cin>>stop[b];

		int tmp=0,Imax=0,start=number-2,maxLeft=0,maxRight=0;
		for(int c=number-2;c>=0;c--)
		{
			tmp+=stop[c];
			if(tmp>=Imax)
			{
				Imax=tmp;
				maxLeft=c;
				maxRight=start;
			}
			if(tmp<0)
			{
				tmp=0;
				start=c-1;
			}
		}

		if(Imax==0)
			cout<<"Route "<<route<<" has no nice parts"<<endl;
		else
			cout<<"The nicest part of route "<<route<<" is between stops "<<maxLeft+1<<" and "<<maxRight+2<<endl;

		route++;
	}
	return 0;
}
