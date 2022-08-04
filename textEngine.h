#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "macro_util.h"
#include "util.h" 

/*
	breif: checks if a line contain only whitespaces, works only for for 81 digits lines
	input: char[81]
	output: 1 for true 0 for false
*/
int isEmpty(char*);
/*
	breif: checks for comments line
	input: char[81]
	output: 1 for true 0 for false
*/
int isComment(char*);
/*
	breif: checks for lines thats starts with label
	input: char[81]
	output: 1 for true 0 for false
*/
int starts_with_label(char*);
/*
	breif: checks for lines thats starts with label, contain only whitespaces or comments line
	input: char[81]
	output: 1 for empty line 2 for comment line 3 for labeled line 0 for else
*/
int throughText(char*);