/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file stats.c
 * @brief Assignment no.-1 C Programing File 
 *
 * This C programing will do some basic calculations on given array and
 * Print the result.
 * The calculations are:
 *                      -Maximum Number from the array 
 *                      -Minimum Number from the array 
 *			-Median 	
 *			-Mean
 *			-Sorting the array in Desending order
 *
 * @author SAIKIRAN BEHARA
 * @date 19-APRIL-2020
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */

#define SIZE (40)

void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  /* Other Variable Declarations Go Here */

unsigned int mean = 0, median = 0, max = 0, min = 0 ;
 
  /* Statistics and Printing Functions Go Here */

printf("\n The Given array is --> ");
print_array(test,SIZE);

mean= find_mean(test,SIZE);
max = find_maximum(test,SIZE);
min = find_minimum(test,SIZE);
median = find_median(test,SIZE);

print_statistics( mean,  median,  max,  min);
sort_array(test,SIZE);
printf("\n The array After Sorting is --> ");
print_array(test,SIZE);

}

/* Add other Implementation File Code Here */

unsigned int find_mean(unsigned char a[], int length) {

int i=0,sum=0;
 for (i=0;i<length;i++)
{
sum += a[i];
}
return (sum/length);

}

unsigned int find_maximum(unsigned char a[], int length){
int max=0,i=0;
max = a[i];
i++;
for(i;i<length;i++)
{
 if ( a[i] > max)
 {
  max = a[i];
 } 
}
return max;
}

unsigned int find_minimum(unsigned char a[], int length){
int min=0,i=0;
min = a[i];
i++;
for(i;i<length;i++)
{
 if ( a[i] < min)
 {
  min = a[i];
 } 
}
return min;
}

unsigned int find_median(unsigned char a[], int length)
{
int i=0,j=0,t=0;

 for ( i=0;i<length;i++)
 {
 for (j=0;j<length-1;j++)
  {
    if(a[j] > a[j+1])
    {
      t=a[j];
      a[j]=a[j+1];
      a[j+1]=t;
    }
  }
 }
if ((length%2) ==1 )
 {
  return a[((length/2)-1)];
 }
else
{
 return a[(((length/2)-1)+(length/2))/2];
}

}

void sort_array(unsigned char a[], int length)
{
int i=0,j=0,t=0;

 for ( i=0;i<length;i++)
 {
 for (j=0;j<length-1;j++)
  {
    if(a[j] < a[j+1])
    {
      t=a[j];
      a[j]=a[j+1];
      a[j+1]=t;
    }
  }
 }


}


void print_statistics(int mean, int median, int maximum, int minimum)
{

printf("\n The Minimum Number from the array is = %d",minimum);
printf("\n The Maximum Number from the array is = %d",maximum);
printf("\n The Mean of the given array is       = %d",mean);
printf("\n The Median of the given array is     = %d",median);

}


void print_array(unsigned char a[], int length)
{
 printf("\n \n");
 for (int i =0; i<length;i++)
 {
   printf("\t \t \t \t \t %d \n",a[i]);
 }

}














