#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct
{
    int X;
    int Y;
    int Length;
    int Paths;
} Spot;
Spot MySpot[10000];

int MyCMP (const void * A, const void * B)
{
    if ( ((Spot*)A)->Length > ((Spot*)B)->Length )
    {
        return 1;
    }
    else if ( ((Spot*)A)->Length == ((Spot*)B)->Length )
    {
        return ( ((Spot*)A)->X > ((Spot*)B)->X );
    }
    else
    {
        return -1;
    }
}

int main()
{
    int Map[101][101];
    Spot* Index[201],*P,*R;
    int Garbages[101][101];
    char Route[101][101];
    int Num_Spots;
    int N,M;
    int I,J,K;
    while (EOF!=scanf("%d%d",&N,&M))
    {
        memset(Map,0,4*101*101);
        memset(Garbages,0,4*101*101);
        memset(Route,0,101*101);
        Num_Spots=0;
        while (1)
        {
            scanf("%d%d",&J,&I);
            if (J==0&&I==0)
                break;
            Map[J][I]=1;
            Garbages[J][I]++;
            MySpot[Num_Spots].X=I;
            MySpot[Num_Spots].Y=J;
            MySpot[Num_Spots].Length=0;
            MySpot[Num_Spots].Paths=0;
            Num_Spots++;
        }
        for (J=1; J<=N; J++)
        {
            for (I=1; I<=M; I++)
            {
                if (Garbages[J-1][I]>Garbages[J][I-1])
                {
                    Garbages[J][I]+=Garbages[J-1][I];
                    Route[J][I]='U';
                }
                else
                {
                    Garbages[J][I]+=Garbages[J][I-1];
                    Route[J][I]='L';
                }
            }
        }
        for (I=0; I<Num_Spots; I++)
        {
            MySpot[I].Length=Garbages[MySpot[I].Y][MySpot[I].X];
        }
        qsort(MySpot,Num_Spots,sizeof(Spot),MyCMP);
        for (I=0; I<Num_Spots; I++)
        {
            Index[MySpot[I].Length]=&MySpot[I];
        }
        for (I=Num_Spots-1; MySpot[I].Length==Garbages[N][M]; I--)
        {
            MySpot[I].Paths=1;
        }
        for (P=(Index[Garbages[N][M]-1]),I=Num_Spots-1; I>=0; I--)
        {
            for (R=Index[(P->Length)+1]; R->Length!=P->Length; R--)
            {
                /*
                if (R->X<P->X)
                    break;
                */
                if (R->X>=P->X && R->Y >= P->Y)
                {
                    (P->Paths)+=(R->Paths);
                }
            }
            P--;
        }
        I=1;
    }
    return 0;
}
