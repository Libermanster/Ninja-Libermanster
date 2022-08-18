
#define MAX_MEMORY 264

typedef struct inctractionArray {
    word arr[MAX_MEMORY];
    int ic = 0;
} inctractionArray;

typedef struct word {
    int labelSwitch; //if a label is decoded in the line 
    struct format{
        int formatTypeIndicator; /* 1 - opcodeFormat , 2 - registerFormat , 3 - dataFormat*/
        Union formatType {
        char* labelName;
        opcodeFormat opcodeFormat;
        registerFormat registerFormat;
        dataFormat dataFormat;
        } formatType;
    }
} word;

typedef struct opcodeFormat {
    int opcode[10]={0}; // 4 first opcode bits
    int src[10]={0}; // 2 bits for sorce refferance mode
    int dst[10]={0}; // 2 bits for destantion reffernace mode
    int are[10]={0}; // 2 bits for ARE
} opcodeFormat;

typedef struct registerFormat {
    int firstOperandRegister[10]={0}; // 4 firts bits for register number in the first operand 
    int secondOperandRegister[10]={0}; // 4 bits for register number in the second operand 
    int are[10]={0}; // 2 bits for ARE 
} registerFormat;

typedef struct dataFormat {
    int data[10]={0}; // 8 bits for various data
    int are[10]={0}; // 2 bits for ARE 
} dataFormat;

