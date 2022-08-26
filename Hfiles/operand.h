
#include "util.h"

#ifndef OPERAND
#define OPERAND


operand createOperand(char* , int , externalList*, symbolList*);
int isExternLabel(char* , symbolList* );

externalList* createExternTable();

externSymbol* createExtern(char* , int );

void addExternToList(externSymbol*, externalList*);

#endif
