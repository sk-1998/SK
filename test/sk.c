#include <stdio.h>
#include<conio.h>
#include "sk.h"


void main()
{
int c=26,d=54;
printf("\n before swap %d ,  %d ",c,d);
swap(&c,&d);
printf("\n after swap %d ,  %d ",c,d);
}


void swap(int *a, int *b )
{
int t;
//printf("\n a=%d b=%d",a,b);
printf("\n a=%d b=%d",*a,*b);

t=*a;
*a=*b;
*b=t;
}
