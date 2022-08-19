/* the pre-asmbler code file, here we do the pre-asmbler macro algorthim */
#include "pre_asmbler.c"




void preasmbler_algorithm(FILE *fp, char name[]) {
    macro_list *macros = ml_create();
    char* line = malloc(sizeof(char)*81);
    int macroSwitch = 0;
    macro *m;
    char *fileName = stringConnect(name,".am");
    FILE *out = fopen(fileName, "w");
    while (NULL != fgets(line, MAX_LINE, fp))
    {
        int i = 0;
        i =countSpaces(line);
        if(macroSwitch)
        {
            if (strncmp(&line[i], "endm", 4) == 0 && isLastWord(&line[i]))
            {
                ml_append(macros, m);
                macroSwitch = 0; /* //turn off the switch */
            }
            else
            {
                m_append(m, line);
                fwrite(line, 1, strlen(line), out);
            }
        }
        else if (startsWithWord(&line[i], "macro"))
        else if (startsWithWord(&line[i], "macro"))
        {
            i += 6;
            trimWord(&line[i]);
            m = m_create(&line[i]);
            macroSwitch = 1;
        }
        else
        {
            if (isLastWord(&line[i]))
            {
                macro *found_macro;
                char *copy = duplicateString(&line[i]);
                trimWord(copy);
                found_macro = ml_get(macros, copy);
                free(copy);
                if (found_macro != NULL)
                {
                    int i = 0;
                    char *m_line;
                    while ((m_line = m_get_line(found_macro, i++)) != NULL)
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
}




