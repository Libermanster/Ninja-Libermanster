
#include "symbol_util.h"


symbol* create_symbol(char* name, int address, symbolType type, symbolSource source) {
   
    symbol *s = malloc(sizeof(symbol));
    s->name = duplicateString(name);
    s->address = address;
    s->type = type;
    s->attribute = attribute;
    s->next = NULL;
    return s;
    
}

char* get_symbol_name(symbol *s)
{
    return s->name;
}


void setLabelAddress(symbol* s, int address) {
    s->address = address;    
}

void setLabelType(symbol* s, symbolType type) {
    s->type = type;
}


void addSymbolToList(symbol *s, symbolList* sl) {
    sl->last->next = s;
    sl->last = s; //לטפל במצב שבו הרשימה ריקה
}


int isLabelExsits(char* str, symbolList* sl) { //לבדוק שהפונקציה הזאת עובדת!!! 
    symbol* temp;
    temp = sl->first;
    while(temp!=NULL) {
        if(strcmp(str,temp->name)==0)
            return 1;
        temp = temp->next;
    }
    return 0;
    
}

int getSymbolAdress(char* str, symbolList* sl) {
    symbol* temp;
    temp = sl->first;
    while(temp!=NULL) {
        if(strcmp(str,temp->name)==0)
            return temp->address;
        temp = temp->next;
    }
    return 0;
}

int getSymbolSource(char *str, symbolList* sl) {
    symbol* temp;
    temp = sl->first;
    while(temp!=NULL) {
        if(strcmp(str,temp->name)==0)
            return temp->source;
        temp = temp->next;
    }
    return -1;
}