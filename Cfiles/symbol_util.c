
#include "../Hfiles/symbol_util.h"


symbol* createSymbol(char* namee, int address, symbolType type, symbolSource source) {
   
    symbol *s = malloc(sizeof(symbol));
    s->name = duplicateString(namee);
    s->address = address;
    s->type = type;
    s->source = source;
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


void addSymbolToList(symbol* s, symbolList* sl) {
    if(sl->first == NULL ) {
        sl->first = s;
        sl->last = s;
    } else
    {
        sl->last->next = s;
        sl->last = s; 
    }
}


int isLabelExsits(char* str, symbolList* sl) { 
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
        if(strcmp(str,temp->name)==0) {
            return temp->address;
        }
        temp = temp->next;
    }
    return 0;
}

int getSymbolSource(char *str, symbolList* sl) {
    symbol* temp;
    temp = sl->first;
    while(temp!=NULL) {
        if(strcmp(str,temp->name)==0) {
            switch(temp->source) {
                case NONE:
                    return 2;
                case EXTERNAL:
                    return 1; 
                case ENTRY:
                    return 0;    
            }
        }
            
            
        temp = temp->next;
    }
    return -1;
}

symbolList* createSymbolTable() {
    symbolList* ptr = malloc(sizeof(symbolList));
    ptr->first = NULL;
    ptr->last = NULL;
    return ptr;
}


void updateSymbolsInList(symbolList* sl, inctractionArray* a) {
    symbol* temp;
    temp = sl->first;
    while(temp!=NULL) {
        if(temp->type == DATA) {
            temp->address += a->ic; /*adding ic to all the data labels */
        }
        if((temp->source == NONE) || (temp->source == ENTRY)) {
            temp->address += 100; /*adding 100 to all labels because the decoding strating from address 100*/
        }

        temp = temp->next;
    }
}

int isEntryLabel(char* name, symbolList* sl) {
    symbol* temp;
    temp = getLabelByName(name,sl);
    if(temp == NULL) {
        return 0;
    }
    if(temp->source == ENTRY) {
        return 1;
    }
    else {
        return 0;
    }
}

symbol* getLabelByName(char* name, symbolList* sl) {
    symbol* temp;
    temp = sl->first;
    while(temp!=NULL) {
        if(strcmp(name,temp->name)==0) {
            return temp;
        }    
        temp = temp->next;
    }
    return NULL;
}


externalList* createExternTable() {
    externalList* ptr = malloc(sizeof(externalList));
    ptr->first = NULL;
    ptr->last = NULL;
    return ptr;    
}

externSymbol* createExtern(char* n, int d) {
    externSymbol* e = malloc(sizeof(externSymbol));
    e->address  = d;
    e->name = duplicateString(n);
    e->next = NULL;
    return e;
}

void addExternToList(externSymbol* e, externalList* el) {
    if(el->first == NULL ) {
        el->first = e;
        el->last = e;
    } 
    else
    {
        el->last->next = e;
        el->last = e; 
    }
}

int isExternLabel(char* name, symbolList* sl) {
    symbol* temp;
    temp = getLabelByName(name,sl);
    if(temp == NULL) {
        return 0;
    }
    if(temp->source == EXTERNAL) {
        return 1;
    }
    else {
        return 0;
    }
}



