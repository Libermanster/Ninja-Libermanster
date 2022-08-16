/*UTILITY FUNCTIONS HEADER*/

#define MAX_LINE 80

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


