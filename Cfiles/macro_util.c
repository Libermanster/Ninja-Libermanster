
#include "../Hfiles/macro_util.h"




macroList *createMacroList()
{
    macroList *list = malloc(sizeof(macroList));
    list->head = NULL;
    list->tail = NULL;
    return list;
}


void addMacroToList(macroList *list, macro *m)
{
    if (list->head == NULL)
    {
        list->head = m;
        list->tail = m;
        return;
    }
    list->tail->next = m;
    list->tail = m;
}


void addLineToMacro(macro *m, char *line)
{
    if (m->lines_filled == m->line_count)
    {
        m->line_count *= 2;
        m->lines = realloc(m->lines, m->line_count);
    }

    m->lines[m->lines_filled++] = duplicateString(line);
}


macro *createMacro(char name[])
{
    macro *m = malloc(sizeof(macro));
    m->name = duplicateString(name);
    m->lines = malloc(sizeof(char *) * INITIAL_LINE_COUNT);
    m->line_count = INITIAL_LINE_COUNT;
    m->lines_filled = 0;
    m->next = NULL;

    return m;
}


macro *getMacroFromList(macroList *list, char *name)
{
    macro *ptr = list->head;
    while (ptr != NULL)
    {
        if (strcmp(name, ptr->name) == 0)
        {
            return ptr;
        }
        ptr = ptr->next;
    }

    return NULL;
}



char *getLineFromMacro(macro *m, int i)
{
    if (i > m->lines_filled)
        return NULL;
    return m->lines[i];
}


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

void freeMacroList(macroList * list) 
{
    macro *ptr = list->head;
    macro *tmp;
    while (ptr != NULL)
    {
        tmp = ptr;
        ptr = ptr->next;
        freeMacro(tmp);
    }
    free(list);
}
