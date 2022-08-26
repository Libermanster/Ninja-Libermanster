
#include "inctractionArray.h"

#ifndef SYMBL_UTL
#define SYMBL_UTL
symbol* createSymbol(char* , int , symbolType , symbolSource );
char* get_symbol_name(symbol*);
void setLabelAddress(symbol* , int );
void setLabelType(symbol* , symbolType );
void addSymbolToList(symbol * ,symbolList * );
int isLabelExsits(char* , symbolList* );
int getSymbolAdress(char* , symbolList* );
int getSymbolSource(char* , symbolList* );
void updateSymbolsInList(symbolList* , inctractionArray* );
symbolList* createSymbolTable();
symbol* getLabelByName(char* , symbolList*);
int isEntryLabel(char* , symbolList* );
int isExternLabel(char* , symbolList* );

externalList* createExternTable();

externSymbol* createExtern(char* , int );

void addExternToList(externSymbol*, externalList*);

#endif
