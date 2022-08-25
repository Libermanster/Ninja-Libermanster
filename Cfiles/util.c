

#include "../Hfiles/util.h" 


int throughText(char *line);

char *stringConnect(char *s1, char *s2) /*//strconcat*/
{
    char *new_s = malloc(strlen(s1) + strlen(s2) + 1);
    strcpy(new_s, s1);
    strcat(new_s, s2);
    return new_s;
}


int countSpaces(char *s) /* skip_spaces*/
{
    int i = 0;
    for (i = 0; i < MAX_LINE && isspace(s[i]) && s[i] != '\0'; i++)
        ;
    return i;
}


int isLastWord(char *s) /*//is_last_word*/
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



int startsWithWord(char *s, char *word) /*//starts_with_word*/
{
    int len = strlen(word);
    return strncmp(s, word, len) == 0 && (isspace(*(s + len)) || *(s + len) == '\0');
}



void deleteSpacesAtEnd(char *s) 
{
    int i = 0;
    while (s[i] != '\0' && !isspace(s[i]))
    {
        i++;
    }
    if (!(s[i] == '\0')) 
    {
        s[i] = '\0';
    }
}


char *duplicateString(char *s) 
{
    char *copy = malloc(sizeof(char) * MAX_LINE);
    strcpy(copy, s);
    /*copy[strlen(copy)] = '\0'; */
    return copy;
}








int hasDott(char *line){
    int i = 0;
    while (line[i] != '\0')
    {
        if (line[i] == '.')
        {
            return 1;
        }
        ++i;
    }
    return 0;
}


void getLabelName(char line[], char label[]){
    int i = 0;
    while(line[i] != ':'){
        if (i >= 30)
        {
            printf("label size to big\n");
            exit(0);
        }
        label[i] = line[i];
        label[i+1] = '\0';
        ++i;
    }
}

void getLabelOperandName(char line[], char label[]){
    int i = 0;
    while(line[i] != '.'){
        label[i] = line[i];
        ++i;
    }
}

int getLabelOperandNumber(char line[]){
    int i = 0;
    while(line[i] != '.'){
        ++i;
    }
    return (line[i+1] - '0');
}

int getRegister(char* str){
    char c = str[1];
    int x = c - '0';
    return x;
}

int isRegister(char* str)
{
    int res = 0;
    res = str[0] == 'r'? 1 : 0;
    res = isdigit(str[1])? 1 : 0;
    if (isspace(str[2])||(str[2] == '\0'))
    {
        return res;
    }
    return 0;
}

int isEmpty(char line[]){
    int _x = throughText(line);
    _x = _x == 1 ? 1 : 0;
    return _x;
}

int isComment(char line[]){
    int _x = throughText(line);
    _x = _x == 2 ? 1 : 0;
    return _x;
}


int startsWithLabel(char line[]){
    int _x = throughText(line);
    _x = _x == 3 ? 1 : 0;
    return _x;
}

int throughText(char line[]){

    int i = 0;
    int fl_whiteSpace = 1;

    fl_whiteSpace = isspace(line[i]) ? 1 : 0;

    while (fl_whiteSpace == 1){
        if (line[i]== '\n')
        {
            return 1;
        }
        if (i > MAX_LINE)
        {
            return 1;
        }
        fl_whiteSpace = isspace(line[i]) ? 1 : 0;
        ++i;
    }


    if (line[i] == ';')
    {
        return 2;
    }

    for (; i <= MAX_LINE; ++i)
    {
        if (isspace(line[i]))
        {
            fl_whiteSpace = 1;
        }
        if ((line[i] == ':')&&(fl_whiteSpace != 1))
        {
            return 3;
        }
    }

    return 0;
}

char* getNextWord(char *line)
{
    char *word;
    int i = 0;
    word = malloc(sizeof(char));
    while (line[i] != '\0' && !isspace(line[i]))
    {
        i++;
    }
    if (i > 0)
    {
        word = realloc(word , sizeof(char) * (i+1));
        strncpy(word, line, i);
        word[i] = '\0';
    }
    return word;
}
