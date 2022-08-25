
#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

char *stringConnect(char *s1, char *s2) /*//strconcat*/
{
    char *new_s = malloc(strlen(s1) + strlen(s2) + 1);
    strcpy(new_s, s1);
    strcat(new_s, s2);
    return new_s;
}

void compare(FILE * fp_1,FILE * fp_2)
{
    char* line_1 = malloc(sizeof(char)*(81));
    char* line_2 = malloc(sizeof(char)*(81));
    int k = 0;
    while((NULL != fgets(line_1, 81, fp_1))) 
    {
        int i = 0;
        fgets(line_2, 81, fp_2);
        k++;
        for(; (i < 81); ++i)
        {
            if((line_2[i]=='\n')&&(line_1[i]=='\n'))
            {
                break;
            }
            if(!(isspace(line_2[i]))&&!(isspace(line_1[i])))
            {
                if(line_2[i]!=line_1[i])
                {
                    printf("\nproblem at line %d\n", (k));
                    fclose(fp_2);
                    fclose(fp_1);
                    exit(1);
                }
            }
        }
    }

}

int main(int argc, char *argv[])
{
   
    char *name_1, *name_2;
    FILE *fp_1, *fp_2;
    printf("\n.ob\n");
    name_1 = stringConnect(argv[1], ".ob");
    name_2 = stringConnect(argv[2], ".ob");
    fp_1 = fopen(name_1, "r");
    fp_2 = fopen(name_2, "r");
    compare(fp_2,fp_1);
    fclose (fp_1);
    fclose (fp_2);
    printf("\n.am\n");
    name_1 = stringConnect(argv[1], ".am");
    name_2 = stringConnect(argv[2], ".am");
    fp_1 = fopen(name_1, "r");
    fp_2 = fopen(name_2, "r");
    compare(fp_2,fp_1);
    fclose (fp_1);
    fclose (fp_2);
    printf("\nThis two files are the fucking same!!!\n");
    return 0;
}

