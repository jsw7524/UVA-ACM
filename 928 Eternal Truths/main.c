#include <stdio.h>
#include <stdlib.h>
#include <string.h>
/**/
#define MyQueueSize (500000)
typedef struct
{
    int X;
    int Y;
    int NextMove;
    int Times;
} Container;
Container MyContainer[MyQueueSize];
int MyQueue_Start,MyQueue_Index;
void MyQueue_initialize()
{
    MyQueue_Start=MyQueue_Index=0;
}
int MyQueue_Pop(Container *Element)
{
    if ( ((MyQueue_Start+1)% MyQueueSize) > MyQueue_Index)
    {
        return 0;
    }
    MyQueue_Start = ((MyQueue_Start+1) % MyQueueSize);
    *Element = MyContainer[MyQueue_Start];
    return 1;
}
int MyQueue_Push(Container Element)
{
    if (MyQueue_Start == ((MyQueue_Index + 1) % MyQueueSize))
    {
        return 0;
    }
    MyQueue_Index = ((MyQueue_Index + 1) % MyQueueSize);
    MyContainer[MyQueue_Index]= Element;
    return 1;
}
/**/

char (Maze[321])[321];
char (Record[321])[321];
Container Start,End;

int BFS()
{
    int I, J, K;
    int CurrentX, CurrentY;
    Container Temp1, Temp2;
    while (MyQueue_Pop(&Temp1))
    {
        K=(Temp1.NextMove)%3+1;
        CurrentX = Temp1.X;
        CurrentY = Temp1.Y;
        if (CurrentX == End.X && CurrentY == End.Y )
            return Temp1.Times;
        /*right*/
        for (I = 1; I <= K; I++)
        {
            if (Maze[CurrentY][CurrentX+I] != '.' )
                break;
        }
        if (I == K+1)
        {
            Temp2.X = CurrentX + K;
            Temp2.Y = CurrentY;
            Temp2.NextMove = K;
            Temp2.Times= Temp1.Times+1;
            MyQueue_Push(Temp2);
        }
        /*left*/
        for (I = 1; I <= K; I++)
        {
            if (Maze[CurrentY][CurrentX-I] != '.')
                break;
        }
        if (I == K+1)
        {
            Temp2.X = CurrentX - K;
            Temp2.Y = CurrentY;
            Temp2.NextMove = K;
            Temp2.Times= Temp1.Times+1;
            MyQueue_Push(Temp2);
        }
        /*up*/
        for (I = 1; I <= K; I++)
        {
            if (Maze[CurrentY-I][CurrentX] != '.')
                break;
        }
        if (I == K+1)
        {
            Temp2.X = CurrentX;
            Temp2.Y = CurrentY - K;
            Temp2.NextMove = K;
            Temp2.Times= Temp1.Times+1;
            MyQueue_Push(Temp2);
        }
        /*down*/
        for (I = 1; I <= K; I++)
        {
            if (Maze[CurrentY+I][CurrentX] != '.')
                break;
        }
        if (I == K+1)
        {
            Temp2.X = CurrentX;
            Temp2.Y = CurrentY + K;
            Temp2.NextMove = K;
            Temp2.Times= Temp1.Times+1;
            MyQueue_Push(Temp2);
        }
    }
    return 0;
}

int main()
{
    int N, C, R;
    int I, J, K;
    scanf("%d", &N);
    while (N--)
    {
        memset(Maze,'#',321*321);
        memset(Record,0,321*321);
        MyQueue_initialize();
        scanf("%d%d", &R, &C);
        getchar();
        for (I = 1; I <= R; I++)
        {
            gets( &Maze[I][1] );
            for (J = 1; J <= C; J++)
            {
                if (Maze[I][J] == 'S')
                {
                    Maze[I][J]='.';
                    Start.X = J;
                    Start.Y = I;
                    Start.NextMove = 3;
                    Start.Times = 0;
                    MyQueue_Push(Start);
                }
                else if (Maze[I][J] == 'E')
                {
                    Maze[I][J]='.';
                    End.X = J;
                    End.Y = I;
                }
            }
        }
        K = BFS();
        if ( K == 0 )
        {
            printf("NO\n");
        }
        else
        {
            printf("%d\n",K);
        }
    }
    return 0;
}
