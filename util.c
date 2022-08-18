#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "macro_util.h"
#include "util.h" 

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






int throughText(char *line);


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
        label[i] == line[i];
        ++i;
    }
}

void getLabelOperandName(char line[], char label[]){
    int i = 0;
    while(line[i] != '.'){
        label[i] == line[i];
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


int starts_with_label(char line[]){
    int _x = throughText(line);
    _x = _x == 3 ? 1 : 0;
    return _x;
}

int throughText(char line[]){

    int i = 0;
    int fl_whiteSpace = 1;

    fl_whiteSpace = isspace(line[i]) ? 1 : 0;

    while (fl_whiteSpace == 1){
        ++i;
        if (line[i]== '\n')
        {
            return 1;
        }
        if (i > MAX_LINE)
        {
            return 1;
        }
        fl_whiteSpace = isspace(line[i]) ? 1 : 0;
    }


    if (line[i] == ';')
    {
        return 2;
    }

    for (i; i <= MAX_LINE; ++i)
    {
        if ((line[i]== ' ')||(line[i]== '\t'))
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

/* 
    int main()
    {
        char* str = "r1yo:";
        char* lab = "yoni";
        printf("r1yo: regtest = %d\n",isRegister(str) );
        str = "r1";
        printf("r1 regtest = %d\n",isRegister(str) );
        str = "r4";
        printf("r4: regtest = %d\n",isRegister(str) );
        str = "11";
        printf("r1 getRegister = %d\n",getRegister(str));
        str = "14";
        printf("r4: getRegister = %d\n",getRegister(str));
        printf("r4: regtest = %d\n",isRegister(str) );
        str = "label.7";
        printf("label.7 getLabelOperandNumber = %d\n",getLabelOperandNumber(str));
        str = "label.7";
        getLabelOperandName(str,lab);
        printf("label.7 getLabelOperandName = %s\n",lab);
        


        str = "r1yo:";
        printf("r1yo: label test = %d\n",starts_with_label(str) );
        str = "r1yo  klsjasdf kkl;a;lkj   jkkdlal;kjf ka;lkjdf ;lkjad;lkj";
        printf("r1yo  klsjasdf kkl;a;lkj   jkkdlal;kjf ka;lkjdf ;lkjad;lkj\n label test = %d\n",starts_with_label(str) );
        str = "  ;r1fd: yo: ;lakjasdf kjdk:";
        printf("  ;r1fd: yo: ;lakjasdf kjdk: label isComment = %d\n",isComment(str) );
        str = "             ;r1fd: yo: ;lakjasdf kjdk:";
        printf("            ;r1fd: yo: ;lakjasdf kjdk: label isComment = %d\n",isComment(str) );
        str = "             1fd: yo: ;lakjasdf kjdk:";
        printf("            1fd: yo: ;lakjasdf kjdk: label isComment = %d\n",isComment(str) );
        str = ";r1fd: yo: ;lakjasdf kjdk:";
        printf(";r1fd: yo: ;lakjasdf kjdk: label isComment = %d\n",isComment(str) );
        return 0;
    }
 */