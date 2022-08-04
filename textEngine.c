/*
text engine that goes through the text and determin what cind of text is it
*/

#include "textEngine.h" 


void whatIsTheLabel(char line[], char label[]){
	int i = 0;
	while(line[i] != ':'){
		label[i] == line[i];
		++i;
	}
}


int isEmpty(char line[]){
	int _x;
	if ((_x = throughText(line)) == 1)
	{
		return 1;
	}
	return 0;
}

int isComment(char line[]){
	int _x;
	if ((_x = throughText(line)) == 2)
	{
		return 1;
	}
	return 0;
}


int starts_with_label(char line[]){
	int _x;
	if ((_x = throughText(line)) == 3)
	{
		return 1;
	}
	return 0;
}

int throughText(char line[]){

	int i = 0;
	int fl_whiteSpace = 1;

	fl_whiteSpace = ((line[i]== ' ')||(line[i]== '\t')) ? 1 : 0;

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
		++i;
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