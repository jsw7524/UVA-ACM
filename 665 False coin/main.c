
#include <iostream.h>
#include <conio.h>
#include <windows.h>

main()
{
    char map[20][20];  //�ѽL���G���}�C�O����
    char ch1,ch2,c1,c2,c3,c4,c5,c6,c,letter;  //��J�P�ϮץΦr���ܼ�
    int  i,j,q,r,t,x,y,z,row,col; //�j��P�}�C���ܼ�
    int  a,b,e,n1,n2,count;   //a,b:����ܼ� n1,n2:���a�`�Ѽ�  count:�`�U�Ѽ�

    c1=1,c2=3,c3=3,c4=4,c5=5,c6=6;  //�]�w�s��1~6���Ѥl�Ϯ�(ASCll�X)
    printf("���бq�U���ܤ@�س��w���Ѥl:\n");
    printf("*************************\n");
    printf("*   1:%c    2:%c    3:%c   *\n",c1,c2,c3);
    printf("*   4:%c    5:%c    6:%c   *\n",c4,c5,c6);
    printf("*************************\n");
    cin>>a;  //���a�諸�Ѥl�s���N�J�ܼ�a��
    printf("���аݱz�n���U�άO��U? (1)���U(2)��U\n");
    cin>>e;
    if(e==1)
    {
        count=0;
    }
    else
    {
        count=1;
    }
    system("cls");  //�M���e��

    srand(time(NULL));   //�H�üƱN�q����@�ؤ��P���a���Ъ��Ѥl
    for(i=0; i<1;)
    {
        b=rand()/5445+1;
        if(b!=a)
        {
            i++;
        }
    }

    ch1=a,ch2=b,n1=0,n2=0; //�N���a�諸�ѽs���N�J�ܼ�ch1��,�ó]�O���Ѽƪ��ܼ�n1,n2���s
    system("cls");
    cout<<"   ";
    for(i=1; i<10; i++)
    {
        cout<<i<<" ";
    }
    for(i=10; i<21; i++)
    {
        cout<<i;
    }
    cout<<endl;

    for(x=1; x<21; x++)
    {
        printf("%2d ",x);
        for(y=1; y<21; y++)
        {
            map[x][y]='.';
            cout<<map[x][y]<<" ";
        }
        cout<<endl;
    }
    printf("******************************************\n");
    printf("*       %c���aA:%3d     %c�q��:%3d         *\n",ch1,n1,ch2,n2);
    printf("******************************************\n");

    for(q=1; q>0; count++)
    {
        if(count%2==0)
        {
            for(j=0; j<1;)
            {
                for(i=0; i<1;)
                {
                    printf("%c���a:\n�п�J�Ѥl��X�y��(1~20):",ch1);
                    cin>>row;
                    if((row<1)||(row>20))
                    {
                        printf("�z��J��X���Фw�W�X�ѽL,�Э��s��J!\n");
                    }
                    else
                    {
                        i++;
                    }
                }
                for(i=0; i<1;)
                {
                    printf("�п�J�Ѥl��y�y��(1~20):");
                    cin>>col;
                    if((col<1)||(col>20))
                    {
                        printf("�z��J��y���Фw�W�X�ѽL,�Э��s��J!\n");
                    }
                    else
                    {
                        i++;
                    }
                }
                if(map[col][row]!='.')
                {
                    printf("����w���Ѥl,�Э��s��J!\n");
                }
                else
                {
                    j++;
                }
            }
            map[col][row]=ch1;
            n1++;
        }
        else
        {
            t=0;
            Sleep(1000);

            for(x=1; x<21; x++) // <�q���u������1> ���a�����|��,�q���h���פ@��(���w��F!)(���u)
            {
                for(y=1; y<21; y++)
                {
                    //�p���a�w���|�l����s�u,�H�üƨM�w�ץ���άO�k��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch1)
                            &&(map[x-1][y]=='.')&&(map[x+4][y]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y]=ch2;
                        }
                        else
                        {
                            map[x+4][y]=ch2;
                        }
                        t=1;
                    }
                    //�p���a�w���|�l�����s�u,�H�üƨM�w�פW��άO�U��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch1)
                            &&(map[x][y-1]=='.')&&(map[x][y+4]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x][y-1]=ch2;
                        }
                        else
                        {
                            map[x][y+4]=ch2;
                        }
                        t=1;
                    }
                    //�p���a�w���|�l�����׳s�u,�H�üƨM�w�ץ��W��άO�k�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)
                            &&(map[x-1][y-1]=='.')&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y-1]=ch2;
                        }
                        else
                        {
                            map[x+4][y+4]=ch2;
                        }
                        t=1;
                    }
                    //�p���a�w���|�l���k�׳s�u,�H�üƨM�w�ץ��U��άO�k�W��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)
                            &&(map[x+1][y-1]=='.')&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x+1][y-1]=ch2;
                        }
                        else
                        {
                            map[x-4][y+4]=ch2;
                        }
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������2> ���a���Q�q���פ@�䪺�|�l��,�h���פ@��!(���u)
            {
                for(y=1; y<21; y++)
                {
                    //�p���a�w���Q�ץ��誺�|�l��s�u,�h���ץk��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch1)
                            &&(map[x-1][y]==ch2)&&(map[x+4][y]=='.')&&(t==0))
                    {
                        map[x+4][y]=ch2;
                        t=1;
                    }
                    //�p���a�w���Q�ץk�誺�|�l��s�u,�h���ץ���!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch1)
                            &&(map[x+4][y]==ch2)&&(map[x-1][y]=='.')&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p���a�w���Q�פW�誺�|�l���s�u,�h���פU��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch1)
                            &&(map[x][y-1]==ch2)&&(map[x][y+4]=='.')&&(t==0))
                    {
                        map[x][y+4]=ch2;
                        t=1;
                    }
                    //�p���a�w���Q�פU�誺�|�l���s�u,�h���פW��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch1)
                            &&(map[x][y+4]==ch2)&&(map[x][y-1]=='.')&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p���a�w���Q�ץ��W�誺�|�l���׳s�u,�h���ץk�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)
                            &&(map[x-1][y-1]==ch2)&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        map[x+4][y+4]=ch2;
                        t=1;
                    }
                    //�p���a�w���Q�ץk�U�誺�|�l���׳s�u,�h���ץ��W��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)
                            &&(map[x+4][y+4]==ch2)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p���a�w���Q�ץk�W�誺�|�l�k�׳s�u,�h���ץ��U��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)
                            &&(map[x+1][y-1]==ch2)&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        map[x-4][y+4]=ch2;
                        t=1;
                    }
                    //�p���a�w���Q�ץ��U�誺�|�l�k�׳s�u,�h���ץk�W��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)
                            &&(map[x-4][y+4]==ch2)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������3> ���a���a��ɪ��|�l��,�h����!(���u)
            {
                for(y=1; y<21; y++)
                {
                    //�p���a�w���a����ɪ��|�l��s�u,�h���ץk��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch1)
                            &&(x==1)&&(map[x+4][y]=='.')&&(t==0))
                    {
                        map[x+4][y]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�k��ɪ��|�l��s�u,�h���ץ���!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch1)
                            &&(x==17)&&(map[x-1][y]=='.')&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�W��ɪ��|�l��s�u,�h���פU��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch1)
                            &&(y==1)&&(map[x][y+4]=='.')&&(t==0))
                    {
                        map[x][y+4]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�U��ɪ��|�l��s�u,�h���פW��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch1)
                            &&(y==17)&&(map[x][y-1]=='.')&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�W��ɪ��|�l���׳s�u,�h���ץk�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)
                            &&(y==1)&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        map[x+4][y+4]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�U��ɪ��|�l���׳s�u,�h���ץ��W��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)
                            &&(y==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p���a�w���a����ɪ��|�l���׳s�u,�h���ץk�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)
                            &&(x==1)&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        map[x+4][y+4]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�k��ɪ��|�l���׳s�u,�h���ץ��W��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)
                            &&(x==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�W��ɪ��|�l�k�׳s�u,�h���ץ��U��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)
                            &&(y==1)&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        map[x-4][y+4]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�U��ɪ��|�l�k�׳s�u,�h���ץk�W��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)
                            &&(y==17)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p���a�w���a����ɪ��|�l�k�׳s�u,�h���ץk�W��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)
                            &&(x==1)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p���a�w���a�k��ɪ��|�l�k�׳s�u,�h���ץ��U��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)
                            &&(x==17)&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        map[x-4][y+4]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������4> ���a�����T��,�h���פ@��!(���u)
            {
                for(y=1; y<21; y++)
                {
                    //�p���a�w���T�l����s�u,�H�üƨM�w�ץ���άO�k��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==ch1)&&(map[x-1][y]=='.')
                            &&(map[x+3][y]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y]=ch2;
                        }
                        else
                        {
                            map[x+3][y]=ch2;
                        }
                        t=1;
                    }
                    //�p���a�w���T�l�����s�u,�H�üƨM�w�פW��άO�U��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==ch1)&&(map[x][y-1]=='.')
                            &&(map[x][y+3]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x][y-1]=ch2;
                        }
                        else
                        {
                            map[x][y+3]=ch2;
                        }
                        t=1;
                    }
                    //�p���a�w���T�l�����׳s�u,�H�üƨM�w�ץ��W��άO�k�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch1)&&(map[x-1][y-1]=='.')
                            &&(map[x+3][y+3]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y-1]=ch2;
                        }
                        else
                        {
                            map[x+3][y+3]=ch2;
                        }
                        t=1;
                    }
                    //�p���a�w���T�l���k�׳s�u,�H�üƨM�w�ץ��U��άO�k�W��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch1)&&(map[x+1][y-1]=='.')
                            &&(map[x-3][y+3]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x+1][y-1]=ch2;
                        }
                        else
                        {
                            map[x-3][y+3]=ch2;
                        }
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������5> ���a���_�T��,�h���פ���!(���u)
            {
                for(y=1; y<21; y++)
                {
                    //�p���a�w����u���_�T-��@ @@�k,�צ�Ŧ�!
                    if((map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch1)&&(map[x+1][y]=='.')&&(t==0))
                    {
                        map[x+1][y]=ch2;
                        t=1;
                    }
                    //�p���a�w����u���_�T-��@@ @�k,�צ�Ŧ�!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch1)&&(map[x+2][y]=='.')&&(t==0))
                    {
                        map[x+2][y]=ch2;
                        t=1;
                    }
                    //�p���a�w�����u���_�T-�W@ @@�U,�צ�Ŧ�!
                    if((map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch1)&&(map[x][y+1]=='.')&&(t==0))
                    {
                        map[x][y+1]=ch2;
                        t=1;
                    }
                    //�p���a�w�����u���_�T-�W@@ @�U,�צ�Ŧ�!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch1)&&(map[x][y+2]=='.')&&(t==0))
                    {
                        map[x][y+2]=ch2;
                        t=1;
                    }
                    //�p���a�w�����׽u���_�T-���W@ @@�k�U,�צ�Ŧ�!
                    if((map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)&&(map[x+1][y+1]=='.')&&(t==0))
                    {
                        map[x+1][y+1]=ch2;
                        t=1;
                    }
                    //�p���a�w�����׽u���_�T-���W@@ @�k�U,�צ�Ŧ�!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch1)&&(map[x+2][y+2]=='.')&&(t==0))
                    {
                        map[x+2][y+2]=ch2;
                        t=1;
                    }
                    //�p���a�w���k�׽u���_�T-�k�W@ @@���U,�צ�Ŧ�!
                    if((map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)&&(map[x-1][y+1]=='.')&&(t==0))
                    {
                        map[x-1][y+1]=ch2;
                        t=1;
                    }
                    //�p���a�w���k�׽u���_�T-�k�W@ @@���U,�צ�Ŧ�!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch1)&&(map[x-2][y+2]=='.')&&(t==0))
                    {
                        map[x-2][y+2]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������6> ��q�������|��,�ɤW�@�l�s���u!(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p���|�l����s�u,�H�üƨM�w�[�b����άO�k��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch2)
                            &&(map[x-1][y]=='.')&&(map[x+4][y]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y]=ch2;
                        }
                        else
                        {
                            map[x+4][y]=ch2;
                        }
                        t=1;
                    }
                    //�p���|�l�����s�u,�H�üƨM�w�[�b�W��άO�U��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch2)
                            &&(map[x][y-1]=='.')&&(map[x][y+4]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x][y-1]=ch2;
                        }
                        else
                        {
                            map[x][y+4]=ch2;
                        }
                        t=1;
                    }
                    //�p���|�l�����׳s�u,�H�üƨM�w�[�b���W��άO�k�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)
                            &&(map[x-1][y-1]=='.')&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y-1]=ch2;
                        }
                        else
                        {
                            map[x+4][y+4]=ch2;
                        }
                        t=1;
                    }
                    //�p���|�l���k�׳s�u,�H�üƨM�w�[�b�k�W��άO���U��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)
                            &&(map[x+1][y-1]=='.')&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x+1][y-1]=ch2;
                        }
                        else
                        {
                            map[x-4][y+4]=ch2;
                        }
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������7> ��q�����Q���a�פ@�䪺�|�l��,�t�@��ɤW�l���u!(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p�q���w���Q�ץ��誺�|�l��s�u,�h�[�b�k��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch2)
                            &&(map[x-1][y]==ch1)&&(map[x+4][y]=='.')&&(t==0))
                    {
                        map[x+4][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���Q�ץk�誺�|�l��s�u,�h���ץ���!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch2)
                            &&(map[x+4][y]==ch1)&&(map[x-1][y]=='.')&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���Q�פW�誺�|�l���s�u,�h���פU��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch2)
                            &&(map[x][y-1]==ch1)&&(map[x][y+4]=='.')&&(t==0))
                    {
                        map[x][y+4]=ch2;
                        t=1;
                    }
                    //�p�q���w���Q�פU�誺�|�l���s�u,�h���פW��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch2)
                            &&(map[x][y+4]==ch1)&&(map[x][y-1]=='.')&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���Q�ץ��W�誺�|�l���׳s�u,�h���ץk�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)
                            &&(map[x-1][y-1]==ch1)&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        map[x+4][y+4]=ch2;
                        t=1;
                    }
                    //�p�q���w���Q�ץk�U�誺�|�l���׳s�u,�h���ץ��W��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)
                            &&(map[x+4][y+4]==ch1)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���Q�ץk�W�誺�|�l�k�׳s�u,�h���ץ��U��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)
                            &&(map[x+1][y-1]==ch1)&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        map[x-4][y+4]=ch2;
                        t=1;
                    }
                    //�p�q���w���Q�ץ��U�誺�|�l�k�׳s�u,�h���ץk�W��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)
                            &&(map[x-4][y+4]==ch1)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������8> ��q�����a��ɪ��|�l��,�ɤW�l���u!(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p�q���w���a����ɪ��|�l��s�u,�h�b�k��ɤW�l���u!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch2)
                            &&(x==1)&&(map[x+4][y]=='.')&&(t==0))
                    {
                        map[x+4][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��|�l��s�u,�h�b����ɤW�l���u!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch2)
                            &&(x==17)&&(map[x-1][y]=='.')&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��|�l��s�u,�h�b�U��ɤW�l���u!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch2)
                            &&(y==1)&&(map[x][y+4]=='.')&&(t==0))
                    {
                        map[x][y+4]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��|�l��s�u,�h�b�W��ɤW�l���u!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch2)
                            &&(y==17)&&(map[x][y-1]=='.')&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��|�l���׳s�u,�h�b�k�U��ɤW�l���u!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)
                            &&(y==1)&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        map[x+4][y+4]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��|�l���׳s�u,�h�b���W��ɤW�l���u!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)
                            &&(y==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a����ɪ��|�l���׳s�u,�h�b�k�U��ɤW�l���u! !
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)
                            &&(x==1)&&(map[x+4][y+4]=='.')&&(t==0))
                    {
                        map[x+4][y+4]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��|�l���׳s�u,�h�b���W��ɤW�l���u!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)
                            &&(x==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��|�l�k�׳s�u,�h�b���U��ɤW�l���u!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)
                            &&(y==1)&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        map[x-4][y+4]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��|�l�k�׳s�u,�h�b�k�W��ɤW�l���u!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)
                            &&(y==17)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a����ɪ��|�l�k�׳s�u,�h�b�k�W��ɤW�l���u!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)
                            &&(x==1)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��|�l�k�׳s�u,�h�b���U��ɤW�l���u!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)
                            &&(x==17)&&(map[x-4][y+4]=='.')&&(t==0))
                    {
                        map[x-4][y+4]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������9> ��q�������T��,�[�W�l�ܦ����|!(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p�q���w���T�l����s�u,�H�üƨM�w�[�b����άO�k��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==ch2)&&(map[x-1][y]=='.')
                            &&(map[x+3][y]=='.')&&(x>=3)&&(x<=16)&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y]=ch2;
                        }
                        else
                        {
                            map[x+3][y]=ch2;
                        }
                        t=1;
                    }
                    //�p�q���w���T�l�����s�u,�H�üƨM�w�[�b�W��άO�U��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==ch2)&&(map[x][y-1]=='.')
                            &&(map[x][y+3]=='.')&&(y>=3)&&(y<=16)&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x][y-1]=ch2;
                        }
                        else
                        {
                            map[x][y+3]=ch2;
                        }
                        t=1;
                    }
                    //�p�q���w���T�l�����׳s�u,�H�üƨM�w�[�b���W��άO�k�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch2)&&(map[x-1][y-1]=='.')
                            &&(map[x+3][y+3]=='.')&&(x>=3)&&(x<=16)&&(y>=3)&&(y<=16)&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y-1]=ch2;
                        }
                        else
                        {
                            map[x+3][y+3]=ch2;
                        }
                        t=1;
                    }
                    //�p�q���w���T�l���k�׳s�u,�H�üƨM�w�[�b�k�W��άO���U��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch2)&&(map[x+1][y-1]=='.')
                            &&(map[x-3][y+3]=='.')&&(x>=3)&&(x<=16)&&(y>=3)&&(y<=16)&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x+1][y-1]=ch2;
                        }
                        else
                        {
                            map[x-3][y+3]=ch2;
                        }
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������10> ��q�����_�T��,�b�����ɤW�l!(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p�q���w����u���_�T-��@ @@�k,�ɤl��Ŧ�!
                    if((map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch2)&&(map[x+1][y]=='.')&&(t==0))
                    {
                        map[x+1][y]=ch2;
                        t=1;
                    }
                    //�p�q���w����u���_�T-��@@ @�k,�ɤl��Ŧ�!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+3][y])&&(map[x][y]==ch2)&&(map[x+2][y]=='.')&&(t==0))
                    {
                        map[x+2][y]=ch2;
                        t=1;
                    }
                    //�p�q���w�����u���_�T-�W@ @@�U,�ɤl��Ŧ�!
                    if((map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch2)&&(map[x][y+1]=='.')&&(t==0))
                    {
                        map[x][y+1]=ch2;
                        t=1;
                    }
                    //�p�q���w�����u���_�T-�W@@ @�U,�ɤl��Ŧ�!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+3])&&(map[x][y]==ch2)&&(map[x][y+2]=='.')&&(t==0))
                    {
                        map[x][y+2]=ch2;
                        t=1;
                    }
                    //�p�q���w�����׽u���_�T-���W@ @@�k�U,�ɤl��Ŧ�!
                    if((map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)&&(map[x+1][y+1]=='.')&&(t==0))
                    {
                        map[x+1][y+1]=ch2;
                        t=1;
                    }
                    //�p�q���w�����׽u���_�T-���W@@ @�k�U,�ɤl��Ŧ�!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+3][y+3])&&(map[x][y]==ch2)&&(map[x+2][y+2]=='.')&&(t==0))
                    {
                        map[x+2][y+2]=ch2;
                        t=1;
                    }
                    //�p�q���w���k�׽u���_�T-�k�W@ @@���U,�ɤl��Ŧ�!
                    if((map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)&&(map[x-1][y+1]=='.')&&(t==0))
                    {
                        map[x-1][y+1]=ch2;
                        t=1;
                    }
                    //�p�q���w���k�׽u���_�T-�k�W@ @@���U,�ɤl��Ŧ�!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-3][y+3])&&(map[x][y]==ch2)&&(map[x-2][y+2]=='.')&&(t==0))
                    {
                        map[x-2][y+2]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<20; x++) // <�q���u������11> �N�Q���a�פ@�䪺�T�l�s���|�l(�i��)
            {
                for(y=1; y<20; y++)
                {
                    //�p�G���Q�ץ����T���l,�h�k��ɤW�@���s���|�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==ch2)&&(map[x-1][y]==ch1)
                            &&(map[x+3][y]=='.')&&(x<=16)&&(t==0))
                    {
                        map[x+3][y]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץk�誽���T���l,�h����ɤW�@���s���|�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==ch2)&&(map[x+3][y]==ch1)
                            &&(map[x-1][y]=='.')&&(x>=3)&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p�G���Q�פW���T���l,�h�U��ɤW�@���s���|�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==ch2)&&(map[x][y-1]==ch1)
                            &&(map[x][y+3]=='.')&&(x>=3)&&(t==0))
                    {
                        map[x][y+3]=ch2;
                        t=1;
                    }
                    //�p�G���Q�פU���T���l,�h�W��ɤW�@���s���|�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==ch2)&&(map[x][y+3]==ch1)
                            &&(map[x][y-1]=='.')&&(x<=16)&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץ��W�襪�ת��T���l,�h�k�U��ɤW�@���s���|�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch2)&&(map[x-1][y-1]==ch1)
                            &&(map[x+3][y+3]=='.')&&(x<=16)&&(y<=16)&&(t==0))
                    {
                        map[x+3][y+3]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץk�U�襪�ת��T���l,�h���W��ɤW�@���s���|�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch2)&&(map[x+3][y+3]==ch1)
                            &&(map[x-1][y-1]=='.')&&(x>=3)&&(y>=3)&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץk�W��k�ת��T���l,�h���U��ɤW�@���s���|�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch2)&&(map[x+1][y-1]==ch1)
                            &&(map[x-3][y+3]=='.')&&(x>=3)&&(y<=16)&&(t==0))
                    {
                        map[x-3][y+3]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץ��U��k�ת��T���l,�h�k�W��ɤW�@���s���|�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch2)&&(map[x-3][y+3]==ch1)
                            &&(map[x+1][y-1]=='.')&&(x<=16)&&(y>=3)&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������12> ��q�����a��ɪ��T�l��,�ɤW���|�l!(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p�q���w���a����ɪ��T�l��s�u,�h�b�k��ɤW�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==ch2)&&(x==1)&&(map[x+3][y]=='.')&&(t==0))
                    {
                        map[x+3][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��T�l��s�u,�h�b����ɤW�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==ch2)&&(x==17)&&(map[x-1][y]=='.')&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��T�l���s�u,�h�b�U��ɤW�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==ch2)&&(y==1)&&(map[x][y+3]=='.')&&(t==0))
                    {
                        map[x][y+3]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��T�l���s�u,�h�b�W��ɤW�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==ch2)&&(y==17)&&(map[x][y-1]=='.')&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��T�l���׳s�u,�h�b�k�U��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch2)&&(y==1)&&(map[x+3][y+3]=='.')&&(t==0))
                    {
                        map[x+3][y+3]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��T�l���׳s�u,�h�b���W��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch2)&&(y==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a����ɪ��T�l���׳s�u,�h�b�k�U��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch2)&&(x==1)&&(map[x+3][y+3]=='.')&&(t==0))
                    {
                        map[x+3][y+3]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��T�l���׳s�u,�h�b���W��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==ch2)&&(x==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��T�l�k�׳s�u,�h�b���U��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch2)&&(y==1)&&(map[x-3][y+3]=='.')&&(t==0))
                    {
                        map[x-3][y+3]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��T�l�k�׳s�u,�h�b�k�W��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch2)&&(y==17)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a����ɪ��T�l�k�׳s�u,�h�b�k�W��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch2)&&(x==1)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��T�l�k�׳s�u,�h�b���U��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==ch2)&&(x==17)&&(map[x-3][y+3]=='.')&&(t==0))
                    {
                        map[x-3][y+3]=ch2;
                        t=1;
                    }

                }
            }

            for(x=1; x<21; x++) // <�q���u������13> ��q�������G��,�[�W�l�ܦ����T!(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p�q���w���G�l����s�u,�H�üƨM�w�[�b����άO�k��!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==ch2)&&(map[x-1][y]=='.')&&(map[x+2][y]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y]=ch2;
                        }
                        else
                        {
                            map[x+2][y]=ch2;
                        }
                        t=1;
                    }
                    //�p�q���w���G�l�����s�u,�H�üƨM�w�[�b�W��άO�U��!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==ch2)&&(map[x][y-1]=='.')&&(map[x][y+2]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x][y-1]=ch2;
                        }
                        else
                        {
                            map[x][y+2]=ch2;
                        }
                        t=1;
                    }
                    //�p�q���w���G�l�����׳s�u,�H�üƨM�w�[�b���W��άO�k�U��!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==ch2)&&(map[x-1][y-1]=='.')&&(map[x+2][y+2]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x-1][y-1]=ch2;
                        }
                        else
                        {
                            map[x+2][y+2]=ch2;
                        }
                        t=1;
                    }
                    //�p�q���w���G�l���k�׳s�u,�H�üƨM�w�[�b�k�W��άO���U��!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==ch2)&&(map[x+1][y-1]=='.')&&(map[x-2][y+2]=='.')&&(t==0))
                    {
                        r=rand()/16335+1;
                        if(r==1)
                        {
                            map[x+1][y-1]=ch2;
                        }
                        else
                        {
                            map[x-2][y+2]=ch2;
                        }
                        t=1;
                    }
                }
            }

            for(x=1; x<20; x++) // <�q���u������14> �N�Q���a�פ@�䪺�G�l�s���T�l(�i��)
            {
                for(y=1; y<20; y++)
                {
                    //�p�G���Q�ץ����G���l,�h�k��ɤW�@���s���T�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==ch2)&&(map[x-1][y]==ch1)&&(map[x+2][y]=='.')&&(t==0))
                    {
                        map[x+2][y]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץk�誽���G���l,�h����ɤW�@���s���T�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==ch2)&&(map[x+2][y]==ch1)&&(map[x-1][y]=='.')&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p�G���Q�פW���G���l,�h�U��ɤW�@���s���T�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==ch2)&&(map[x][y-1]==ch1)&&(map[x][y+2]=='.')&&(t==0))
                    {
                        map[x][y+2]=ch2;
                        t=1;
                    }
                    //�p�G���Q�פU���G���l,�h�W��ɤW�@���s���T�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==ch2)&&(map[x][y+2]==ch1)&&(map[x][y-1]=='.')&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץ��W�襪�ת��G���l,�h�k�U��ɤW�@���s���T�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==ch2)&&(map[x-1][y-1]==ch1)&&(map[x+2][y+2]=='.')&&(t==0))
                    {
                        map[x+2][y+2]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץk�U�襪�ת��G���l,�h���W��ɤW�@���s���T�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==ch2)&&(map[x+2][y+2]==ch1)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץk�W��k�ת��G���l,�h���U��ɤW�@���s���T�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==ch2)&&(map[x+1][y-1]==ch1)&&(map[x-2][y+2]=='.')&&(t==0))
                    {
                        map[x-2][y+2]=ch2;
                        t=1;
                    }
                    //�p�G���Q�ץ��U��k�ת��G���l,�h�k�W��ɤW�@���s���T�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==ch2)&&(map[x-2][y+2]==ch1)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������15> ��q�����a��ɪ��G�l��,�ɤW���T�l(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�p�q���w���a����ɪ��G�l��s�u,�h�b�k��ɤW�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==ch2)&&(x==1)&&(map[x+2][y]=='.')&&(t==0))
                    {
                        map[x+2][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��G�l��s�u,�h�b����ɤW�l!
                    if((map[x][y]==map[x+1][y])&&(map[x][y]==ch2)&&(x==17)&&(map[x-1][y]=='.')&&(t==0))
                    {
                        map[x-1][y]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��G�l���s�u,�h�b�U��ɤW�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==ch2)&&(y==1)&&(map[x][y+2]=='.')&&(t==0))
                    {
                        map[x][y+2]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��G�l���s�u,�h�b�W��ɤW�l!
                    if((map[x][y]==map[x][y+1])&&(map[x][y]==ch2)&&(y==17)&&(map[x][y-1]=='.')&&(t==0))
                    {
                        map[x][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��G�l���׳s�u,�h�b�k�U��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==ch2)&&(y==1)&&(map[x+2][y+2]=='.')&&(t==0))
                    {
                        map[x+2][y+2]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��G�l���׳s�u,�h�b���W��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==ch2)&&(y==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a����ɪ��G�l���׳s�u,�h�b�k�U��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==ch2)&&(x==1)&&(map[x+2][y+2]=='.')&&(t==0))
                    {
                        map[x+2][y+2]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��G�l���׳s�u,�h�b���W��ɤW�l!
                    if((map[x][y]==map[x+1][y+1])&&(map[x][y]==ch2)&&(x==17)&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        map[x-1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�W��ɪ��G�l�k�׳s�u,�h�b���U��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==ch2)&&(y==1)&&(map[x-2][y+2]=='.')&&(t==0))
                    {
                        map[x-2][y+2]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�U��ɪ��G�l�k�׳s�u,�h�b�k�W��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==ch2)&&(y==17)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a����ɪ��G�l�k�׳s�u,�h�b�k�W��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==ch2)&&(x==1)&&(map[x+1][y-1]=='.')&&(t==0))
                    {
                        map[x+1][y-1]=ch2;
                        t=1;
                    }
                    //�p�q���w���a�k��ɪ��G�l�k�׳s�u,�h�b���U��ɤW�l!
                    if((map[x][y]==map[x-1][y+1])&&(map[x][y]==ch2)&&(x==17)&&(map[x-2][y+2]=='.')&&(t==0))
                    {
                        map[x-2][y+2]=ch2;
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������16> ��q���������l��,�ɤW�l�����G(�i��)
            {
                for(y=1; y<21; y++)
                {
                    if((map[x][y]==ch2)&&(map[x+1][y]=='.')&&(map[x-1][y]=='.')&&(map[x][y+1]=='.')&&(map[x][y-1]=='.')
                            &&(map[x+1][y+1]=='.')&&(map[x+1][y-1]=='.')&&(map[x-1][y+1]=='.')&&(map[x-1][y-1]=='.')&&(t==0))
                    {
                        r=rand()/4084+1;
                        if(r==1)
                        {
                            map[x+1][y]=ch2;
                        }
                        else if(r==2)
                        {
                            map[x-1][y]=ch2;
                        }
                        else if(r==3)
                        {
                            map[x][y+1]=ch2;
                        }
                        else if(r==4)
                        {
                            map[x][y-1]=ch2;
                        }
                        else if(r==5)
                        {
                            map[x+1][y+1]=ch2;
                        }
                        else if(r==6)
                        {
                            map[x+1][y-1]=ch2;
                        }
                        else if(r==7)
                        {
                            map[x-1][y+1]=ch2;
                        }
                        else
                        {
                            map[x-1][y-1]=ch2;
                        }
                        t=1;
                    }
                }
            }

            for(x=1; x<21; x++) // <�q���u������17> ��q�����Q�ת����l��,�b�S�Q�ת��a��ɤW�l�����G(�i��)
            {
                for(y=1; y<21; y++)
                {
                    //�_�����ѥ��W=>�k�U���K���I�̧ǧP�w�q�����l�O�_�Q����,�O���ܴ��䥦�I,�_���ܥ[�W�l����I!
                    if((map[x][y]==ch2)&&(t==0))
                    {
                        if(map[x-1][y-1]==ch1)
                        {
                            if(map[x][y-1]==ch1)
                            {
                                if(map[x+1][y-1]==ch1)
                                {
                                    if(map[x-1][y]==ch1)
                                    {
                                        if(map[x+1][y]==ch1)
                                        {
                                            if(map[x-1][y+1]==ch1)
                                            {
                                                if(map[x][y+1]==ch1)
                                                {
                                                    if(map[x+1][y+1]==ch1)
                                                    {
                                                        t=-1;
                                                    }
                                                    else
                                                    {
                                                        map[x+1][y+1]=ch2;
                                                    }
                                                }
                                                else
                                                {
                                                    map[x][y+1]=ch2;
                                                }
                                            }
                                            else
                                            {
                                                map[x-1][y+1]=ch2;
                                            }
                                        }
                                        else
                                        {
                                            map[x+1][y]=ch2;
                                        }
                                    }
                                    else
                                    {
                                        map[x-1][y]=ch2;
                                    }
                                }
                                else
                                {
                                    map[x+1][y-1]=ch2;
                                }
                            }
                            else
                            {
                                map[x][y-1]=ch2;
                            }
                        }
                        else
                        {
                            map[x-1][y-1]=ch2;
                        }
                        t++;
                    }
                }
            }

            // <�q���u������18> ��q���Ҧ��l���Q��,���s���I�U�l!(�i��)

            if(t==0)
            {
                for(i=0; i<1;)
                {
                    x=rand()/1634+1;
                    y=rand()/1634+1;
                    if((map[x][y]=='.')&&(map[x-1][y-1]=='.')&&(map[x][y-1]=='.')&&(map[x+1][y-1]=='.')&&(map[x-1][y]=='.')
                            &&(map[x+1][y]=='.')&&(map[x-1][y+1]=='.')&&(map[x][y+1]=='.')&&(map[x+1][y+1]=='.')&&(t==0))
                    {
                        map[x][y]=ch2;
                        t=1;
                        i++;
                    }
                }
            }
            n2++;
        }

        system("cls");
        cout<<"   ";
        for(i=1; i<10; i++)
        {
            cout<<i<<" ";
        }
        for(i=10; i<21; i++)
        {
            cout<<i;
        }
        cout<<endl;

        for(x=1; x<21; x++)
        {
            printf("%2d ",x);
            for(y=1; y<21; y++)
            {
                cout<<map[x][y]<<" ";
            }
            cout<<endl;
        }
        printf("******************************************\n");
        printf("*       %c���aA:%3d     %c�q��:%3d         *\n",ch1,n1,ch2,n2);
        printf("******************************************\n");

        for(x=1; x<21; x++)
        {
            for(y=1; y<21; y++)
            {
                //�����s�u�P�_��
                if((map[x][y]==map[x+1][y])&&(map[x][y]==map[x+2][y])&&(map[x][y]==map[x+3][y])
                        &&(map[x][y]==map[x+4][y])&&(map[x][y]!='.'))
                {
                    map[x][y]=15,map[x+1][y]=15,map[x+2][y]=15,map[x+3][y]=15,map[x+4][y]=15;
                    q--;
                }
                //��s�u�P�_��
                if((map[x][y]==map[x][y+1])&&(map[x][y]==map[x][y+2])&&(map[x][y]==map[x][y+3])
                        &&(map[x][y]==map[x][y+4])&&(map[x][y]!='.'))
                {
                    map[x][y]=15,map[x][y+1]=15,map[x][y+2]=15,map[x][y+3]=15,map[x][y+4]=15;
                    q--;
                }
                //���ת��s�u�P�_��
                if((map[x][y]==map[x+1][y+1])&&(map[x][y]==map[x+2][y+2])&&(map[x][y]==map[x+3][y+3])
                        &&(map[x][y]==map[x+4][y+4])&&(map[x][y]!='.'))
                {
                    map[x][y]=15,map[x+1][y+1]=15,map[x+2][y+2]=15,map[x+3][y+3]=15,map[x+4][y+4]=15;
                    q--;
                }
                //�k�ת��s�u�P�_��
                if((map[x][y]==map[x-1][y+1])&&(map[x][y]==map[x-2][y+2])&&(map[x][y]==map[x-3][y+3])
                        &&(map[x][y]==map[x-4][y+4])&&(map[x][y]!='.'))
                {
                    map[x][y]=15,map[x-1][y+1]=15,map[x-2][y+2]=15,map[x-3][y+3]=15,map[x-4][y+4]=15;
                    q--;
                }
            }
        }

        if(q==0)
        {
            system("cls");
            cout<<"   ";
            for(i=1; i<10; i++)
            {
                cout<<i<<" ";
            }
            for(i=10; i<21; i++)
            {
                cout<<i;
            }
            cout<<endl;

            for(x=1; x<21; x++)
            {
                printf("%2d ",x);
                for(y=1; y<21; y++)
                {
                    cout<<map[x][y]<<" ";
                }
                cout<<endl;
            }
            printf("******************************************\n");
            printf("*       %c���aA:%3d     %c�q��:%3d         *\n",ch1,n1,ch2,n2);
            printf("******************************************\n");
            if(count%2==0)
            {
                printf("*              ���߱z�ӧQ!               *\a\n");
            }
            else
            {
                printf("*               �q���ӧQ!                *\a\n");
            }
            printf("******************************************\n");
        }
    }

    getch();
}
