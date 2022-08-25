#include "../Hfiles/opcode.h"

int getOpcode(char* str) {
    char *opcodeArray[]={"mov","cmp","add","sub","not","clr","lea","inc","dec","jmp","bne","get","prn","jsr","rts","hlt"};
    int i = 0;
    for( ; i < 16 ; i++) {
        if(0 == strcmp(str,opcodeArray[i]))
            return i;
    }
    return -1;
}

