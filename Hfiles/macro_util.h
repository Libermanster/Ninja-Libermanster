/*MACROS UTILLITY FUNCTIONS HEADER*/
#include "util.h"

#define INITIAL_LINE_COUNT 20

#ifndef MACRO_UTIL
#define MACRO_UTIL
/* the macro stracture*/
typedef struct macro
{
    char *name;
    char **lines;
    int line_count;
    int lines_filled;
    struct macro *next;
} macro;

/* the macro list stracture */

typedef struct macroList
{
    macro *head;
    macro *tail;

} macroList;



/**
 * creates a pointer to macro and maloocs it
 */
macro *createMacro(char *);

/**
 * adds a line of defention to a macro
 */
void addLineToMacro(macro *, char *);

/**
 * gets a defention line from a macro
 */
char *getLineFromMacro(macro *, int );





/**
 * create a macro  list
 */
macroList *createMacroList();

/**
 * adds macro  to list
 */
void addMacroToList(macroList *, macro *);

/**
 * get a macro from the list using its name
 */
macro *getMacroFromList(macroList *, char *);

/**
  free the memory used by the macro list
 */
/*both function are responssible of freeing the macro list at the end of the list use*/
void freeMacro(macro*);
void freeMacroList(macroList *);


#endif