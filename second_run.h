#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "macro_util.h"
#include "util.h" 
#include "inctractionArray.h" 
#include "dataImage.h" 
#include "symbol_util.h" 
#include "operand.h" 


#define MAX_MEMORY 264


#ifndef SCNDRN
#define SCNDRN
inctractionArray second_run(inctractionArray*, dataImage*, symbolList*);
#endif
