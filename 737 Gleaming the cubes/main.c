#include <stdio.h>
#include <stdlib.h>
typedef struct Cube MyCube;
struct Cube
{
    int Point[8][3];
};

MyCube Regularize(int X, int Y, int Z, int E)
{
    MyCube Temp={X, Y, Z,
              X+E,Y, Z,
              X,Y+E, Z,
              X, Y, Z+E,
              X+E, Y+E, Z,
              X+E, Y, Z+E,
              X, Y+E, Z+E,
              X+E, Y+E, Z+E};
    return Temp;
}

MyCube FindIntersection(MyCube A, MyCube B)
{
    MyCube Temp={A.Point[0][0]>B.Point[0][0]?A.Point[0][0]:B.Point[0][0],
                 A.Point[0][1]>B.Point[0][1]?A.Point[0][1]:B.Point[0][1],
                 A.Point[0][2]>B.Point[0][2]?A.Point[0][2]:B.Point[0][2],

                 A.Point[1][0]<B.Point[1][0]?A.Point[1][0]:B.Point[1][0],
                 A.Point[1][1]>B.Point[1][1]?A.Point[1][1]:B.Point[1][1],
                 A.Point[1][2]>B.Point[1][2]?A.Point[1][2]:B.Point[1][2],

                 A.Point[2][0]>B.Point[2][0]?A.Point[2][0]:B.Point[2][0],
                 A.Point[2][1]<B.Point[2][1]?A.Point[2][1]:B.Point[2][1],
                 A.Point[2][2]>B.Point[2][2]?A.Point[2][2]:B.Point[2][2],

                 A.Point[3][0]>B.Point[3][0]?A.Point[3][0]:B.Point[3][0],
                 A.Point[3][1]>B.Point[3][1]?A.Point[3][1]:B.Point[3][1],
                 A.Point[3][2]<B.Point[3][2]?A.Point[3][2]:B.Point[3][2],

                 A.Point[4][0]<B.Point[4][0]?A.Point[4][0]:B.Point[4][0],
                 A.Point[4][1]<B.Point[4][1]?A.Point[4][1]:B.Point[4][1],
                 A.Point[4][2]>B.Point[4][2]?A.Point[4][2]:B.Point[4][2],

                 A.Point[5][0]<B.Point[5][0]?A.Point[5][0]:B.Point[5][0],
                 A.Point[5][1]>B.Point[5][1]?A.Point[5][1]:B.Point[5][1],
                 A.Point[5][2]<B.Point[5][2]?A.Point[5][2]:B.Point[5][2],

                 A.Point[6][0]>B.Point[6][0]?A.Point[6][0]:B.Point[6][0],
                 A.Point[6][1]<B.Point[6][1]?A.Point[6][1]:B.Point[6][1],
                 A.Point[6][2]<B.Point[6][2]?A.Point[6][2]:B.Point[6][2],

                 A.Point[7][0]<B.Point[7][0]?A.Point[7][0]:B.Point[7][0],
                 A.Point[7][1]<B.Point[7][1]?A.Point[7][1]:B.Point[7][1],
                 A.Point[7][2]<B.Point[7][2]?A.Point[7][2]:B.Point[7][2]};

    return Temp;
}

int main()
{
    int N, X, Y, Z, E;
    MyCube A, B;
    while (EOF != scanf("%d", &N))
    {
        if (N == 0)break;
        scanf("%d%d%d%d", &X, &Y, &Z, &E);
        A = Regularize(X, Y, Z, E);
        N--;
        scanf("%d%d%d%d", &X, &Y, &Z, &E);
        B = Regularize(X, Y, Z, E);
        A = FindIntersection(A, B);
        N--;
        while (N--)
        {
            scanf("%d%d%d%d", &X, &Y, &Z, &E);
            B = Regularize(X, Y, Z, E);
            A = FindIntersection(A, B);
        }
        if (0 >= (N = (A.Point[7][0] - A.Point[0][0]) * (A.Point[7][1] - A.Point[0][1]) * (A.Point[7][2] - A.Point[0][2])))
            printf("0\n");
        else
            printf("%d\n", N);
    }
    return 0;
}
