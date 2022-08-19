#include "util.h"



#ifndef SYMBL_UTL
#define SYMBL_UTL
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


symbol* create_symbol(char* , int , symbolType , symbolSource );
char* get_symbol_name(symbol*);
void setLabelAddress(symbol* , int );
void setLabelType(symbol* , symbolType );
void addSymbolToList(symbol* , symbolList* );
int isLabelExsits(char* , symbolList* );
int getSymbolAdress(char* , symbolList* );
int getSymbolSource(char* , symbolList* );

#endif


