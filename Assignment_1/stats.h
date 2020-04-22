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
 * @file stats.h
 * @brief Assignment no.-1 Header File
 *
 * In this we declare Some function which will be used in C programing File.
 * The functions which we are declered are: 
 *						-print_statistics()
 *						-print_array()
 *						-find_median() 
 *						-find_mean()
 *						-find_maximum()
 *						-find_minimum() 
 *						-sort_array()
 *
 * @author SAIKIRAN BEHARA
 * @date 19-APRIL-2020
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/* Add Your Declarations and Function Comments here */ 



/**
 * @brief This will print the data of an array
 *
 * In this the data will be Reverses a array of size one byte
 * this is void function this will not Return a value. 
 * To print the data no return value is Required thus i had use void function
 * insted of void function we can use any other data type with return of zero value
 *
 * @param  char  This will reverses onr byte value to store the array value
 * @param  int   This will reverses one byte value to store the length of the array  
 *
 *
 * @return This is a void function it will return notthing
 */
void print_array(unsigned char a[], int length);  

/**
 * @brief this function will calculate mean of an given array
 *
 * In this the data will be Reverses a array of size one byte
 * this function this will Return a unsigned integer  value. 
 * this will add all the array value and divided it by 2 to find the mean
 * this answer will return in unsigned integer form 
 *
 * @param  char  This will reverses onr byte value to store the array value
 * @param  int   This will reverses one byte value to store the length of the array  
 *
 *
 * @return This function will return a unsigned integer valve 
 */        
unsigned int find_mean(unsigned char a[], int length);


/**
 * @brief this function will calculate median of an given array
 *
 * In this the data will be Reverses a array of size one byte
 * this function this will Return a unsigned integer  value. 
 * In this the array is sorted in ascending order and pick the center value which 
 * would be the median 
 * this answer will return in unsigned integer form 
 *
 * NOTE: if the length of array is even then it will take the average of two middle 
 * number and then return the value
 *
 * @param  char  This will reverses onr byte value to store the array value
 * @param  int   This will reverses one byte value to store the length of the array  
 *
 *
 * @return This function will return a unsigned integer valve 
 */     
unsigned int find_median(unsigned char a[], int length);


/**
 * @brief this function will calculate Maximum number from a given array
 *
 * In this the data will be Reverses a array of size one byte
 * this function this will Return a unsigned integer value. 
 * in this it will take first element and compare with other element
 * if the other element is greater then it will swap the number 
 * by comparing with each element we will left with maximum value number 
 * this value will return to the main function
 *
 * @param  char  This will reverses onr byte value to store the array value
 * @param  int   This will reverses one byte value to store the length of the array  
 *
 *
 * @return This function will return a unsigned integer valve 
 */  
unsigned int find_maximum(unsigned char a[], int length);

/**
 * @brief this function will calculate Minimum number from a given array
 *
 * In this the data will be Reverses a array of size one byte
 * this function this will Return a unsigned integer value. 
 * in this it will take first element and compare with other element
 * if the other element is Smaller then it will swap the number 
 * by comparing with each element we will left with minimum value number 
 * this value will return to the main function
 *
 * @param  char  This will reverses onr byte value to store the array value
 * @param  int   This will reverses one byte value to store the length of the array  
 *
 *
 * @return This function will return a unsigned integer valve 
 */ 
unsigned int find_minimum(unsigned char a[], int length);

/**
 * @brief This will Sort the array in Desending order
 *
 * In this the data will be Reverses a array of size one byte
 * this is void function this will not Return a value. 
 * this will sort the array by bubble sort algorithm
 * insted of void function we can use any other data type with return of zero value
 *
 * @param  char  This will reverses onr byte value to store the array value
 * @param  int   This will reverses one byte value to store the length of the array  
 *
 *
 * @return This is a void function it will return notthing
 */
void sort_array(unsigned char a[], int length);

/**
 * @brief This will print the result 
 *
 * This function will print the result that we had calculated before
 * this is void function this will not Return a value. 
 * To print the data no return value is Required thus i had use void function
 * insted of void function we can use any other data type with return of zero value
 * This function will print:minimum, maximum, mean, and median.
 * 
 * @param  int   This will reverses one byte value to store the length of the array  
 *
 *
 * @return This is a void function it will return notthing
 */
void print_statistics(int mean, int median, int maximum, int minimum);






#endif /* __STATS_H__ */
