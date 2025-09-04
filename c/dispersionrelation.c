#include <stdio.h>
#include <math.h>

#define PI 3.14

int main()
{
    char file[]="dispersionrelation.dat";
    FILE *dispersionrelation;
    dispersionrelation=fopen (file,"w");
    
    double w, k;
    
    for(k=-PI; k<=PI; k+=0.01){
        w=sqrt(2.- 2.*cos(k));
        
        fprintf(dispersionrelation,"%20.8f %20.8f\n", k, w);
    }
    fclose(dispersionrelation);

    return 0;
}
