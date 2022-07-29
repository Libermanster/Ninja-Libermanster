/*UTILITY FUNCTIONS HEADER*/

#define MAX_LINE 80

/**
 * @brief duplicate a string
 *
 * @param s the string
 * @return char* the new string
 */
char *duplicateString(char *s);

/**
 * @brief get the index of the first non space character
 *
 * @param s the string
 * @return int the index
 */
int countSpaces(char *s);

/**
 * @brief check if the sequence of chars at the start of the string is followed by spaces only
 *
 * @param s the string
 * @return int whether its the last word in the string
 */
int isLastWord(char *s);



/**
 * @brief check if a string starts with a given word
 *
 * @param s the string
 * @param word the word
 * @return int whether the string starts with the word
 */
int startsWithWord(char *s, char *word);



/**
 * @brief connect new strings into a new one
 *
 * @param s1 the first string
 * @param s2 the second string
 * @return char* the new string
 */
char *stringConnect(char *s1, char *s2);


/**
 * @brief remove trailing spaces from string
 *
 * @param s the string
 */
void trimWord(char *s);


