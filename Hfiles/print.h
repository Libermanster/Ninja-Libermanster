#include "dataImage.h"
#include "symbol_util.h"





#ifndef PRINNT
#define PRINNT
/**
 * prints the asmbly to base 32 decode
 */
void printObject(char* ,dataImage* , inctractionArray*);
/**
 * prints the extern symbols
 */
void printExtern(char* , externalList* );
/**
 * prints the entry symbols
 */
void printEntry(char* , symbolList* ); 
#endif