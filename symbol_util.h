#include util.h 




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
    char name[MAX_LINE]; 
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


symbol* create_symbol(char* name, int address, symbolType type, symbolSource source) {
    //make header
}


char* get_symbol_name(symbol* s) {
  // make heaer   
}

void add_symbol_to_list(symbol *s, symbol_list *sl) {
    // please make this function in the c file, add the symbol s to symbol_list sl , )רשימה מקושרת
}

