#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "util.h" 
#include "inctractionArray.h" 
#include "dataImage.h" 
#include "symbol_util.h" 
#include "operand.h" 
#include "opcode.h"

#ifndef FIRST_RUN
#define FIRST_RUN
FILE first_run_algorithm(FILE* , inctractionArray* , dataImage* , symbolList* );
#endif