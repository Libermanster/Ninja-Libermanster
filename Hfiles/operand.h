
#include "util.h"

#ifndef OPERAND
#define OPERAND


operand createOperand(char*);

#endif

#ifndef TYPES
#define TYPES


typedef union value {
    int number;/*  //data ot register number */
    char *labelName;
    struct labelNameAndNum {
        char *name;
        int num;
    } labelNameAndNum;
} value;

typedef struct operand {
    int reffMode; /* //שיטת המיעון, refferenc Mode */
    value value;
} operand;


typedef struct externSymbol
{
    int address;
    char *name;
    struct externSymbol *next;
} externSymbol;


typedef struct externalList 
{
    externSymbol *first;
    externSymbol *last;
} externalList;

#endif
