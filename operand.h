#include "util.h"


#ifndef OPERAND
#define OPERAND

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
#endif
