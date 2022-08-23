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
 * @brief create a new macro
 *
 * @param name the name of the macro
 * @return macro* a new macro
 */
macro *createMacro(char *name);

/**
 * @brief apppend a line to the macro
 *
 * @param m the macro
 * @param line the line
 */
void addLineToMacro(macro *m, char *line);

/**
 * @brief get a line of a macro
 * if no line exists at the index NULL is returned
 *
 * @param m the macro
 * @param i the index of the line
 * @return char* the line
 */
char *getLineFromMacro(macro *m, int i);





/**
 * @brief create a new macro list
 *
 * @return macroList* a new macro list
 */
macroList *createMacroList();

/**
 * @brief append a macro to the list
 *
 * @param list the macro list
 * @param m the macro
 */
void addMacroToList(macroList *list, macro *m);

/**
 * @brief get a macro from the list using its name
 *
 * @param list the list
 * @param name the name of the desired macro
 * @return macro* the relevant macro
 */
macro *getMacroFromList(macroList *list, char *name);

/**
 * @brief free the memory used by the macro list
 * 
 * @param list the macro list list
 */
void freeMacroList(macroList *list);



void freeMacro(macro* m) 
    {
    int i = 0;
    char *line;
    while ((line = getLineFromMacro(m, i)) != NULL)
    {
        free(line);
        i++;
    }
    free(m->lines);
    free(m->name);
    free(m);
}


#endif