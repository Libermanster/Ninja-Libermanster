char *stringConnect(char *s1, char *s2) //strconcat
{
    char *new_s = malloc(strlen(s1) + strlen(s2) + 1);
    strcpy(new_s, s1);
    strcat(new_s, s2);
    return new_s;
}


int countSpaces(char *s) // skip_spaces
{
    int i = 0;
    for (i = 0; i < MAX_LINE && isspace(s[i]) && s[i] != '\0'; i++)
        ;
    return i;
}


int isLastWord(char *s) //is_last_word
{
    int i = 0;
    while (s[i] != '\0' && !isspace(s[i]))
    {
        i++;
    }
    while (s[i] != '\0')
    {
        if (!isspace(s[i]))
            return 0;
        i++;
    }
    return 1;
}



int startsWithWord(char *s, char *word) //starts_with_word
{
    int len = strlen(word);
    return strncmp(s, word, len) == 0 && (isspace(*(s + len)) || *(s + len) == '\0');
}



void trimWord(char *s) //trim_word
{
    int i = 0;
    while (s[i] != '\0' && !isspace(s[i]))
    {
        i++;
    }
    if (!(s[i] == '\0')) /* prevent segfault if there aren't any spaces*/
    {
        s[i] = '\0';
    }
}


char *duplicateString(char *s) //dupstr
{
    char *copy = malloc(sizeof(char) * MAX_LINE);
    strcpy(copy, s);
    return copy;
}