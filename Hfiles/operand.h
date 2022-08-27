
#include "util.h"

#ifndef OPERAND
#define OPERAND


operand createOperand(char* , externalList*, int ,  symbolList*, inctractionArray*);
int isExternLabel(char* , symbolList* );

externalList* createExternTable();

externSymbol* createExtern(char* , int );

void addExternToList(externSymbol*, externalList*);
int checkOperandsError(int ,operand * ,int ,int );

#endif
