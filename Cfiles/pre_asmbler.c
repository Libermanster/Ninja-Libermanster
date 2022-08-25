/* the pre-asmbler code file, here we do the pre-asmbler macro algorthim */
#include "../Hfiles/pre_asmbler.h"


FILE* preasmbler_algorithm(FILE *fp, char name[])
{
    macroList *macros = createMacroList();
    char* line = malloc(sizeof(char)*81);
    int macroSwitch = 0;
    macro *m;
    char *fileName;
    FILE *out;
    fileName = stringConnect(name,".am");
    out = fopen(fileName, "w");
    while (NULL != fgets(line, MAX_LINE, fp))
    {
        int i = 0;
        i =countSpaces(line);
        if(macroSwitch)
        {
            if (strncmp(&line[i], "endm", 4) == 0 && isLastWord(&line[i]))
            {
                addMacroToList(macros, m);
                macroSwitch = 0; /* //turn off the switch */
            }
            else
            {
                addLineToMacro(m, line);
                
            }
        }
       
        else if (startsWithWord(&line[i], "macro"))
        {
            i += 6;
            deleteSpacesAtEnd(&line[i]);
            m = createMacro(&line[i]);
            macroSwitch = 1;
        }
        else
        {
            if (isLastWord(&line[i]))
            {
                macro *found_macro;
                char *copy = duplicateString(&line[i]);
                deleteSpacesAtEnd(copy);
                found_macro = getMacroFromList(macros, copy);
                free(copy);
                if (found_macro != NULL)
                {
                    int i = 0;
                    char *m_line;
                    while ((m_line = getLineFromMacro(found_macro, i++)) != NULL)
                    {
                        fwrite(m_line, 1, strlen(m_line), out);
                    }
                }
                else
                {
                    fwrite(line, 1, strlen(line), out);
                }
            }
            else
            {
                fwrite(line, 1, strlen(line), out);
            }
        }
    }
    fclose(fp);
    freeMacroList(macros);
    return out;
}

