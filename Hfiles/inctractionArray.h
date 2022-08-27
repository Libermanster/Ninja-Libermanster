#include "operand.h"
#include "baseTranslator.h"




#ifndef INSTRACTION
#define INSTRACTION




inctractionArray* createInstractionArray();


/*fills word with opcode format*/
void fillOpcodeFormat(inctractionArray* ,int, int, int, int);
/*fills word with data format*/
void fillDataFormat(inctractionArray* , int, int);
/*fills word with register format*/
void fillRegisterFormat(inctractionArray* , int, int, int);
/*adds inctraction to inctractionArray*/
void addInstractionToArray(inctractionArray* ,int ,operand[3] ,int );
/*get the inctraction counter*/
int getIC(inctractionArray* );

#endif
