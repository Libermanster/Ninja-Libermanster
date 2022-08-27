#ifndef TYPES
#define TYPES

/*symbol util*/

typedef enum symbolType
{
    UNKNOWN,
    INCTRACTION,
    DATA
} symbolType;

typedef enum symbolSource
{
    NONE,
    ENTRY,
    EXTERNAL
} symbolSource;

typedef struct symbol
{
    char *name; 
    int address;
    symbolType type;
    symbolSource source;
    struct symbol *next;

} symbol;

typedef struct symbolList
{
    symbol *first;
    symbol *last;
    
} symbolList;

typedef union value {
    int number;/*  //data ot register number */
    char *labelName;
    struct labelNameAndNum {
        char *name;
        int num;
    } labelNameAndNum;
} value;
/*operands*/
typedef struct operand {
    int reffMode; /*  refferenc Mode */
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

/*instraction*/


typedef struct opcodeFormat {
    int opcode[10]; /* // 4 first opcode bits */
    int src[10]; /* // 2 bits for sorce refferance mode */
    int dst[10]; /* // 2 bits for destantion reffernace mode */
    int are[10]; /* // 2 bits for ARE */
} opcodeFormat;

typedef struct dataFormat {
    int data[10];/*  // 8 bits for various data */
    int are[10];/*  // 2 bits for ARE  */
} dataFormat;

typedef struct registerFormat {
    int firstOperandRegister[10]; /* // 4 firts bits for register number in the first operand  */
    int secondOperandRegister[10]; /* // 4 bits for register number in the second operand  */
    int are[10]; /* // 2 bits for ARE  */
} registerFormat;

typedef struct word {
    int labelSwitch;/*  //if a label is decoded in the line  */
    struct format{
        int formatTypeIndicator; /* 1 - opcodeFormat , 2 - registerFormat , 3 - dataFormat*/
        union formatType {
        char* labelName;
        opcodeFormat opcodeFormat;
        registerFormat registerFormat;
        dataFormat dataFormat;
        } formatType;
    } format;
} word;

typedef struct inctractionArray {
    word arr[MAX_MEMORY];
    int ic;
} inctractionArray;


#endif