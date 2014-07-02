#include <stdio.h>
#define nx 100
#define ny 80


double u [nx][ny]; 
int i, j, k, n;


void initialize()
{
    for (i = 0; i < nx; i++)
    {
        for (j = 0; j < ny; j++)
        {
            u[i][j] = 0.0;
        }
    }
}

void boundaries()
{
    for (n = 0; n <= ny; n++)
    {
        u[0][n] = nx;
    }
}

void gaussSeidel()
{
    for (k = 1; k <= 10000; k++)
    {
        for (i = 1; i < nx-1; i++)
        {
            for (j = 1; j < ny-1; j++)
            {
                u[i][j] = 0.25*(u[i-1][j] + u[i+1][j] + u[i][j-1] + u[i][j+1]);
            }
        }
    
    }
}

void printToFile()
{
    FILE *output = fopen("datalap.dat","w");
    for (int i = 0; i < nx; i++)
    {
        for (int j = 0; j < ny; j++)
        {
            fprintf(output, "%.5f\t", u[i][j]);
        }
        fprintf(output, "\n");
    }
    fclose(output);
}

int main()
{
    initialize();
    boundaries();
    gaussSeidel();
    printToFile();
}
