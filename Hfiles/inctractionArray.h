#include "operand.h"
#include "baseTranslator.h"




#ifndef INSTRACTION
#define INSTRACTION




inctractionArray* createInstractionArray();



void fillOpcodeFormat(inctractionArray* ,int, int, int, int);
void fillDataFormat(inctractionArray* , int, int);

void fillRegisterFormat(inctractionArray* , int, int, int);




void addInstractionToArray(inctractionArray* ,int ,operand[3] ,int );

int getIC(inctractionArray* );

#endif
