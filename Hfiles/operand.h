
#include "util.h"

#ifndef OPERAND
#define OPERAND

/*create an operand and adds it to linked list*/
operand createOperand(char* , externalList*, int ,  symbolList*, inctractionArray*);
/*chex if a label is external*/
int isExternLabel(char* , symbolList* );
/*initialized external list*/
externalList* createExternTable();
/*create singal node inside external list*/
externSymbol* createExtern(char* , int );
/*add node to external list*/
void addExternToList(externSymbol*, externalList*);

int checkOperandsError(int ,operand * ,int ,int );

#endif
