/*UTILITY FUNCTIONS HEADER*/

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "macro_util.h"
#define MAX_LINE 80



#ifndef UTIL
#define UTIL





/*
 * duplicate a string s into a new array of chars and return the pointer for that chars array
 */
char *duplicateString(char *s);

/*
 * return the index of the first non space character in the char array s
 */
int countSpaces(char *s);

/*
 * check if a string s is the last string on the line
 *
 * if the string is followed by spaces only its the last word in the line
 */
int isLastWord(char *s);



/**
 * checks if a line starts with a specific words
 * get the pointer for the line wich is chars array
 * get char array to be compared to naked word
 * return 1 if the line do starts with thew word otherwise return 0
 */
int startsWithWord(char *s, char *word);



/**
 * attaches two diffrent strings into new combined string, s1 first and then s2
 */
char *stringConnect(char *s1, char *s2);


/**
 * remove all spaces after last string in a line
 * return nothing
 * chage the original char array
 */
void deleteSpacesAtEnd(char *s);



/*
    breif: 
    input: line[81]
    output: int, 1 for true 0 for false
*/
int hasDott(char*);
/*
    breif: get back the label
    input: line[81], label[]
    output: void, change the label char array into the label
*/
void getLabelName(char*, char*);
/*
    breif: checks if a line contain only whitespaces, works only for for 81 digits lines
    input: line[81]
    output: 1 for true 0 for false
*/
int isEmpty(char*);
/*
    breif: checks for comments line
    input: line[81]
    output: 1 for true 0 for false
*/
int isComment(char*);
/*
    breif: checks for lines thats starts with label
    input: line[81]
    output: 1 for true 0 for false
*/
int starts_with_label(char*);
/*
    breif: checks for lines thats starts with label, contain only whitespaces or comments line
    input: line[81]
    output: 1 for empty line 2 for comment line 3 for labeled line 0 for else
*/
int throughText(char*);


/*
    breif: 
    input: line[81]
    output:
*/
void getLabelOperandName(char line[], char label[]);

/*
    breif: 
    input: line[81]
    output:
*/
int getLabelOperandNumber(char line[]);

/*
    breif: 
    input: line[81]
    output:
*/
int getRegister(char* str);

/*
    breif: 
    input: line[81]
    output:
*/
int isRegister(char* str);

#endif