


#include "operand.h"

operand createOperand(char* str) {
    operand operand;
    char* num; 
    int number;
    int registerNumber;
    char* namee = NULL;
    str+=countSpaces(str);
    deleteSpacesAtEnd(str);
    if(str[0]=='#') 
    {
        str++;
        num = getNextWord(str);
        if(num[0]=='-') {
        num++;
        number = -atoi(num);
        }
        number = atoi(num); /* //לשים לב שלא עובד למספרים שליליים יש לתקן */
        operand.reffMode = 0;
        operand.value.number = number;
        return operand;
    }
    
    else if(isRegister(str)==1) 
    {
        registerNumber = getRegister(str);
        if(0<=registerNumber && registerNumber<=7) {
            operand.reffMode = 3;
            operand.value.number = registerNumber;
            return operand;
        }
        
        
            /*  error , reg number is not legal */
       
    }
    
    else {
        if(hasDott(str)==1) {
            
            getLabelOperandName(str,namee); /* //get the stracture label name */
            operand.reffMode = 2;
            operand.value.labelNameAndNum.name = duplicateString(namee);
            operand.value.labelNameAndNum.num = getLabelOperandNumber(str);
            return operand;
        }
        else{
            operand.reffMode = 1;
            operand.value.labelName = duplicateString(str);
            return operand;
        }
    }
   /*  //if none of that shit then there is an error , illigal operand ; */
   /* doesnt supose to reach this point*/
operand.reffMode= -1;
operand.value.number = -1;
return operand;     
}
