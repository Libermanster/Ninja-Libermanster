


#include "../Hfiles/operand.h"
/*#include "../Hfiles/symbol_util.h"*/

operand createOperand(char* str, externalList* el, int lineCounter,  symbolList* sl,inctractionArray* a) {
    operand operand;
    char* num; 
    int number;
    int registerNumber;
    char* namee = malloc(sizeof(char)*(MAX_LINE+1));
    str+=countSpaces(str);
    deleteSpacesAtEnd(str);
    if(str[0]=='#') 
    {
        str++;
        num = getNextWord(str);
        if(num[0]=='-') {
        num++;
        number = -1 * atoi(num);
        }
        else  {
        number = atoi(num); 
        }
        operand.reffMode = 0;
        operand.value.number = number;
        free(namee);
        return operand;
    }
    
    else if(isRegister(str)==1) 
    {
        registerNumber = getRegister(str);
        if(0<=registerNumber && registerNumber<=7) {
            operand.reffMode = 3;
            operand.value.number = registerNumber;
            free(namee);
            return operand;
        }
        else{
            printf("ERROR IN LINE: %d , ILLIGAL REGISTER NUMBER", lineCounter);
        }
       
    }
    
    
    
    else  if(hasDott(str)==1) 
    {
            
            getLabelOperandName(str,namee); /* //get the stracture label name */
            operand.reffMode = 2;
            operand.value.labelNameAndNum.name = duplicateString(namee);
            operand.value.labelNameAndNum.num = getLabelOperandNumber(str);
            free(namee);
            return operand;
    }

    else if(hasDott(str)==0)
    {
            operand.reffMode = 1;
            operand.value.labelName = duplicateString(str);
            if(isExternLabel(str,sl)==1)  {
                externSymbol* e;
                e = createExtern(duplicateString(str),a->ic);
                addExternToList(e,el);
            }
            free(namee);
            return operand;
     }
    operand.reffMode= -1;
    operand.value.number = -1;
    free(namee);
    printf("ERROR IN LINE: %d , ILLIGAL OPERANDS", lineCounter);
    return operand; 

   /*  //if none of that shit then there is an error , illigal operand ; */
   /* doesnt supose to reach this point*/ 
}



int checkOperandsError(int op,operand arr[],int i,int lineCounter) {
    int str1[]={0,1,2,3};
    int str2[]={1,2,-1,-1};
    int str3[]={1,2,3,-1};
    switch(op) {
        case 0:
            if(i==2) {
                if(isIn(arr[1].reffMode,str1)==1 && isIn(arr[2].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 1:
            if(i==2) {
                if(isIn(arr[1].reffMode,str1)==1 && isIn(arr[2].reffMode,str1)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 2:
            if(i==2) {
                if(isIn(arr[1].reffMode,str1)==1 && isIn(arr[2].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 3:
            if(i==2) {
                if(isIn(arr[1].reffMode,str1)==1 && isIn(arr[2].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 4:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 5:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 6:
            if(i==2) {
                if(isIn(arr[1].reffMode,str2)==1 && isIn(arr[2].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 7:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 8:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 9:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 10:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 11:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 12:
            if(i==1) {
                if(isIn(arr[1].reffMode,str1)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 13:
            if(i==1) {
                if(isIn(arr[1].reffMode,str3)==1) {
                    return 1;
                }
                else {
                    printf("ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL",lineCounter);
                    return 0;
                }
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }    
        case 14:
            if(i==0) {
               return 1;
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }
        case 15:
            if(i==0) {
               return 1;
            }
            else{
                printf("ERROR IN LINE: %d , OPERANDS COUNT MISMATCH",lineCounter);
                return 0;
            }

    }
    return -1;
}
