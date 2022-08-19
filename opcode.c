#include "opcode.h"
const char *opcodeArray[16]={"mov","cmp","add","sub","not","clr","lea","inc","dec","jmp","bne","get","prn","jsr","rts","hlt"};

int getOpcode(char* str) {
    for(int i=0;i<=15;i++) {
        if(strcmp(str,opcodeArray[i])==0);
            return i;
    }
    return -1;
}

