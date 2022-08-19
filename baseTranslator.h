#include <stdio.h>

#ifndef BASETRANS
#define BASETRANS


/*from dec to binary begins*/

/*
translating decimal number into array that holds the binary presentation of the int

all the binary presentation is being implimanting inside an array of 10 intigers

the user must give the function the length of the presentation

the function uses only the relevant first cells according to given length
*/

/*
recursive function that add one to the binary presentation as part of the Two's complement if the number was negative
called by itself or by twoComplicated
using len as index of the cell which to be add 1
if after the addition the cell value is one the function finished her job
else it add one to the next sell
*/

void addOne(int*,int);

/*
if the number was negative twoComplicated will implement Two's complement principle into it to make it negative

it flips all digit and the adding one with addOne function
*/
void twoComlicated(int*,int);

/*
	translate a given number dec to binary presentation with length of len digit inside the first len cells of an array arr

	translate the absouloute value of the number into the array
	if the number was negative it calls twoComplicated to change it to negative value with Two's complement principle
*/
void decToBin(int, int, int*);
	

/*from dec to binary ends*/

/*from dec to base32 begins*/
/*
translate any number smaller or equal to 1024 to 32 base presentation
get the number to translate and the 2 digit long string in which to store the resault
*/
void decTo32(int, char*);
/*from dec to base32 ends*/

#ifndef