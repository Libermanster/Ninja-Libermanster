
#include "inctractionArray.h"

#ifndef SYMBL_UTL
#define SYMBL_UTL
/**
 * creates a new symbol
 * return a pointer to it
 */
symbol* createSymbol(char* , int , symbolType , symbolSource );
/**
 * gets a symbol name
 */
char* get_symbol_name(symbol*);
/**
 * sets an address to a symbol
 */
void setLabelAddress(symbol* , int );
/**
 * sets a type to a symbol
 */
void setLabelType(symbol* , symbolType );
/**
 * add a symbol to the symbol list
 */
void addSymbolToList(symbol * ,symbolList * );
/**
 * checks if the label already is in the symbolList
 * return 1 if yes , 0 if no
 */
int isLabelExsits(char* , symbolList* );
/**
 * gets an symbol address using his name and the symbolList
 */
int getSymbolAdress(char* , symbolList* );
/**
 * gets an symbol source using his name and the symbolList
 */
int getSymbolSource(char* , symbolList* );
/**
 * adds 100 to labels and ic to data labels addreses
 */
void updateSymbolsInList(symbolList* , inctractionArray* );
/**
 * return a pointer to a symbolList that is created
 */
symbolList* createSymbolTable();
/**
 * gets label pointer using his name and  symbolList
 */
symbol* getLabelByName(char* , symbolList*);
/**
 * checks if label is entry source label
 * returns 1 if yes, 0 if no
 */
int isEntryLabel(char* , symbolList* );
/**
 * checks if label is extern source label
 * returns 1 if yes, 0 if no
 */
int isExternLabel(char* , symbolList* );
/**
 * creates extern List
 */

externalList* createExternTable();
/**
 * creates an extern node to be added to extern Table
 */

externSymbol* createExtern(char* , int );
/**
 * adds extern node to list
 */

void addExternToList(externSymbol*, externalList*);

#endif
