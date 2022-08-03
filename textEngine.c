/*
text engine that goes through the text and determin what cind of text is it
*/

#include "textEngine.h" 

int isEmpty(char line[]){
	if ((throughText(line)) == 1)
	{
		return 1;
	}
	return 0;
}

int isComment(char line[]){
	if ((throughText(line)) == 2)
	{
		return 1;
	}
	return 0;
}

int starts_with_label(char line[]){
	if ((throughText(line)) == 3)
	{
		return 1;
	}
	return 0;
}


int throughText(){

	int i = 0;
	int fl_whiteSpace = 1;

	while (fl_whiteSpace == 1){
		if (line[i]== '\n')
		{
			return 1;
		}
		if (i > MAX_LINE)
		{
			return 1;
		}
		fl_whiteSpace = ((line[i]== ' ')||(line[i]== '\t')) ? 1 : 0;
	}

	for (i; i <= MAX_LINE; ++i)
	{
		if (line[i] == ';')
		{
			return 2;
		}
	}

	return 0;
}