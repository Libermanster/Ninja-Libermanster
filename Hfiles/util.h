/*UTILITY FUNCTIONS HEADER*/

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

#define MAX_LINE 80
#define MAX_MEMORY 264


#ifndef UTIL
#define UTIL
#include "Types.h"

int isIn(int , int*);



/*
 * duplicate a string s into a new array of chars and return the pointer for that chars array
 */
char *duplicateString(char *);

/*
 * return the index of the first non space character in the char array s
 */
int countSpaces(char *);

/*
 * check if a string s is the last string on the line
 *
 * if the string is followed by spaces only its the last word in the line
 */
int isLastWord(char *);



/**
 * checks if a line starts with a specific words
 * get the pointer for the line wich is chars array
 * get char array to be compared to naked word
 * return 1 if the line do starts with thew word otherwise return 0
 */
int startsWithWord(char *, char *);



/**
 * attaches two diffrent strings into new combined string, s1 first and then s2
 */
char *stringConnect(char *, char *);


/**
 * remove all spaces after last string in a line
 * return nothing
 * chage the original char array
 */
void deleteSpacesAtEnd(char *);



/*
   checks  ifthelabel is a stracture
*/
int hasDott(char *);
/*
    gets label name from a string
*/
void getLabelName(char *, char *);
/*
    checks if a line contain only whitespaces, works only for for 81 digits lines

*/
int isEmpty(char *);
/*
    breif: checks for comments line
 
*/
int isComment(char *);
/*
    breif: checks if the line starts with label
   
*/
int startsWithLabel(char *);
/*
   
*/
int throughText(char *);


/*
    gets name of a label stracture before the dot
*/
void getLabelOperandName(char *, char *);

/*
   gets number of stracture after the dot
*/
int getLabelOperandNumber(char *);

/*
    gets register number
*/
int getRegister(char *);

/*
    checks if its a register
*/
int isRegister(char *);

/* gets the next word in the line*/

char* getNextWord(char *);

#endif