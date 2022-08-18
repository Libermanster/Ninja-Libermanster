#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "macro_util.h"
#include "util.h" 

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