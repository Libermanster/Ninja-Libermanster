#include "inctractionArray.h"

inctractionArray* createInstractionArray() {
    inctractionArray* ptr = malloc(sizeof(inctractionArray));
    ptr->ic = 0;
            
}



void fillOpcodeFormat(inctractionArray *a,int i, int k, int p, int r) {
    fillArray(i,4,a->arr[a->ic].format.formatType.opcodeFormat.opcode);
    fillArray(k,2,a->arr[a->ic].format.formatType.opcodeFormat.src);
    fillArray(p,2,a->arr[a->ic].format.formatType.opcodeFormat.dst);
    fillArray(r,2,a->arr[a->ic].format.formatType.opcodeFormat.are);    
    a->arr[a->ic].labelSwitch = 0;
    a->arr[a->ic].format.formatTypeIndicator = 1;
    a->ic++;
}

void fillDataFormat(inctractionArray *a, int i, int k) {
    fillArray(i,8,a->arr[a->ic].format.formatType.dataFormat.data);
    fillArray(k,2,a->arr[a->ic].format.formatType.dataFormat.are);
    a->arr[a->ic].labelSwitch = 0;
    a->arr[a->ic].format.formatTypeIndicator = 3;
    a->ic++;
}

void fillRegisterFormat(inctractionArray *a, int i, int k, int p) {
    fillArray(i,4,a->arr[a->ic].format.formatType.registerFormat.firstOperandRegister);
    fillArray(k,4,a->arr[a->ic].format.formatType.registerFormat.secondOperandRegister);
    fillArray(p,2,a->arr[a->ic].format.formatType.registerFormat.are);
    a->arr[a->ic].labelSwitch = 0;
    a->arr[a->ic].format.formatTypeIndicator = 2;
    a->ic++;
}




void addInstractionToArray(inctractionArray *a,int opcode,operand operands[3],int i) {
    switch (i) 
    {
        case 0 :
        
           /*  //checkEroorOpcode(i); */
            fillOpcodeFormat(a,opcode,0,0,0);
            a->arr[a->ic].labelSwitch = 0;
            return;
            
       case 1 :
        
           /*  //checkEroorOpcode(i); */
            switch(operands[1].reffMode) 
            {
                case 0: 
                    fillOpcodeFormat(a,opcode,0,0,0);
                    fillDataFormat(a,operands[1].value.number,0);
                    return;
                case 1:
                    fillOpcodeFormat(a,opcode,1,0,0);
                    a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelName);
                    a->arr[a->ic].labelSwitch = 1;
                    a->ic++;
                    return;
                case 2:
                    fillOpcodeFormat(a,opcode,2,0,0);
                    a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelNameAndNum.name);
                    a->arr[a->ic].labelSwitch = 1;
                    a->ic++;
                    fillDataFormat(a,operands[1].value.labelNameAndNum.num,0);
                    return;
                case 3:
                    fillOpcodeFormat(a,opcode,3,0,0);
                    fillRegisterFormat(a,operands[1].value.number,0,0);
                    return;
                    
                    
            }
        case 2 :
            switch(operands[1].reffMode) 
            {
                case 0:
                    switch(operands[2].reffMode) 
                    {
                        case 0:
                            fillOpcodeFormat(a,opcode,0,0,0);
                            fillDataFormat(a,operands[1].value.number,0);  
                            fillDataFormat(a,operands[2].value.number,0);
                            return;
                        case 1:
                            fillOpcodeFormat(a,opcode,0,1,0);
                            fillDataFormat(a,operands[1].value.number,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            return;
                        case 2:
                            fillOpcodeFormat(a,opcode,0,2,0);
                            fillDataFormat(a,operands[1].value.number,0); 
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[2].value.labelNameAndNum.num,0);
                            return;
                        case 3:
                            fillOpcodeFormat(a,opcode,0,3,0);
                            fillDataFormat(a,operands[1].value.number,0);
                            fillRegisterFormat(a,0,operands[2].value.number,0);
                            return;
                    }
                case 1:
                    switch(operands[2].reffMode) 
                    {
                        case 0:
                            fillOpcodeFormat(a,opcode,1,0,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[2].value.number,0);
                            return;
                        case 1:
                            fillOpcodeFormat(a,opcode,1,1,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            return;
                        case 2:
                            fillOpcodeFormat(a,opcode,1,2,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[2].value.labelNameAndNum.num,0);
                            return;
                        case 3:
                            fillOpcodeFormat(a,opcode,1,3,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillRegisterFormat(a,0,operands[2].value.number,0);
                            return;
                            
            
                    }
                case 2:
                    switch(operands[2].reffMode) 
                    {
                        case 0:
                            fillOpcodeFormat(a,opcode,2,0,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[1].value.labelNameAndNum.num,0); 
                            fillDataFormat(a,operands[2].value.number,0);
                            return;
                        case 1:
                            fillOpcodeFormat(a,opcode,2,1,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[1].value.labelNameAndNum.num,0); 
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            return;
                        case 2:
                            fillOpcodeFormat(a,opcode,2,2,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[1].value.labelNameAndNum.num,0); 
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[2].value.labelNameAndNum.num,0);
                            return;
                        case 3:
                            fillOpcodeFormat(a,opcode,2,3,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[1].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[1].value.labelNameAndNum.num,0); 
                            fillRegisterFormat(a,0,operands[2].value.number,0);
                            return;
                    
                            
                            
                            
                            
                            
                            
                            
                    }
                case 3:
                    switch(operands[2].reffMode) 
                    {
                        case 0:
                            fillOpcodeFormat(a,opcode,3,0,0);
                            fillRegisterFormat(a,operands[1].value.number,0,0);
                            fillDataFormat(a,operands[2].value.number,0);
                            return;
                        case 1:
                            fillOpcodeFormat(a,opcode,3,1,0);
                            fillRegisterFormat(a,operands[1].value.number,0,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelName);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            return;
                        case 2:
                            fillOpcodeFormat(a,opcode,3,2,0);
                            fillRegisterFormat(a,operands[1].value.number,0,0);
                            a->arr[a->ic].format.formatType.labelName = duplicateString(operands[2].value.labelNameAndNum.name);
                            a->arr[a->ic].labelSwitch = 1;
                            a->ic++;
                            fillDataFormat(a,operands[2].value.labelNameAndNum.num,0);
                            return;
                        case 3:
                            fillOpcodeFormat(a,opcode,3,3,0);
                            fillRegisterFormat(a,operands[1].value.number,operands[2].value.number,0);
                            return;
                            
                    }
                    
                
            }
            
            
        
            
            
    }        
}

int getIC(inctractionArray* a) {
    return a->ic;
}