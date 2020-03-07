#include <stdio.h>
#include <stdlib.h>

int main()
{
    int Item[7];
    int Box;
    while (EOF!=scanf("%d%d%d%d%d%d",&Item[1],&Item[2],&Item[3],&Item[4],&Item[5],&Item[6]))
    {
        if (Item[1]==0&&Item[2]==0&&Item[3]==0&&Item[4]==0&&Item[5]==0&&Item[6]==0)
        {
            break;
        }
        Box=Item[6];

        Box+=Item[5];
        if (Item[1]-11*Item[5]>=0)
        {
            Item[1]-=11*Item[5];
        }
        else
        {
            Item[1]=0;
        }

        Box+=Item[4];
        if (Item[2]-5*Item[4]>=0)
        {
            Item[2]-=5*Item[4];
        }
        else
        {
            if (Item[1] - 4*(5*Item[4]-Item[2])>=0)
            {
                Item[1]-=4*(5*Item[4]-Item[2]);
            }
            else
            {
                Item[1]=0;
            }
            Item[2]=0;
        }

        if (Item[3]%4==0)
        {
            Box+=(Item[3]/4);
        }
        else
        {
            Box+=Item[3]/4;
            Box+=1;
            if (Item[3]%4==1)
            {
                Item[3]-=1;
                if (Item[2]-5>=0)
                {
                    Item[2]-=5;
                }
                else
                {
                    Item[2]=0;
                }

                if (Item[1]-7>=0)
                {
                    Item[1]-=7;
                }
                else
                {
                    Item[1]=0;
                }
            }
            else if (Item[3]%4==2)
            {
                Item[3]-=2;
                if (Item[2]-3>=0)
                {
                    Item[2]-=3;
                }
                else
                {
                    Item[2]=0;
                }

                if (Item[1]-6>=0)
                {
                    Item[1]-=6;
                }
                else
                {
                    Item[1]=0;
                }
            }
            else if (Item[3]%4==3)
            {
                Item[3]-=3;
                if (Item[2]-1>=0)
                {
                    Item[2]-=1;
                }
                else
                {
                    Item[2]=0;
                }

                if (Item[1]-5>=0)
                {
                    Item[1]-=5;
                }
                else
                {
                    Item[1]=0;
                }
            }
        }

        if (Item[2]%9==0)
        {
            Box+=(Item[2]/9);
        }
        else
        {
            Box+=Item[2]/9;
            Box+=1;
            if (Item[1]-4*(9-Item[2]%9)>=0)
            {
                Item[1]-=4*(9-Item[2]%9);
            }
            else
            {
                Item[1]=0;
            }
        }

        if (Item[1]!=0)
            Box+=((Item[1]-1)/36)+1;

        printf("%d\n",Box);
    }
    return 0;
}
