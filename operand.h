#ifndef OPERAND
#define OPERAND
typedef struct operand {
    int reffMode; //שיטת המיעון, refferenc Mode
    value value;
} operand;

typedef union value {
    int number; //data ot register number
    char *labelName;
    struct labelNameAndNum {
        char *name;
        int num;
    } labelNameAndNum;
} value;
#endif



operand createOperand(char* str) {
    operand operand;
    str+=skip_spaces(str);
    trimWord(str);
    if(str[0]=='#') 
    {
        str++;
        char* num = getNextWord(str);
        int number = atoi(num); //לשים לב שלא עובד למספרים שליליים יש לתקן
        operand.reffMode = 0;
        operand.value.number = number;
        return operand;
    }
    
    else if(isRegister(str)==1) 
    {
        int registerNumber = getRegisterNumber(str);
        if(0<=registerNumber && registerNumber<=7) {
            operand.reffMode = 3;
            operand.value.number = registerNumber;
            return operand;
        }
        else
            //error , reg number is not legal
    }
    
    else {
        if(hasDot(str)==1) {
            char *name = getLabelOperandName(str); //get the stracture label name
            operand.reffMode = 2;
            operand.value.labelNameAndNum.name = duplicateString(name);
            operand.value.labelNameAndNum.num = getIntAfterDot(str);
            return operand;
        }
        else{
            operand.reffMode = 1;
            operand.value.labelName = dulicateString(str);
            return operand;
        }
    }
    //if none of that shit then there is an error , illigal operand ;
    return NULL;
    
    
        
    
}