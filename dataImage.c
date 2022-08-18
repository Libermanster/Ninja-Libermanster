#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "dataImage.h"
#include "util.h"

void addInt(char* number, dataImage* dataIm)
{
    number += countSpaces(number); /* delete spaces in the start */
    deleteSpacesAtEnd(number); /* delete spaces in the end*/
    int num = atoi(number); /*doesnt work for negative please fix*/
    dataIm->dataArray[dataIm->dc] = num; 
    (dataIm->dc)++;
}


void addString(char* string, dataImage* dataIm){
    int length = strlen(string)+1;
    int i;
    for(i=0;i<length;i++) 
    {
        dataIm->dataArray[dataIm->dc] = (int)string[i];
        (dataIm->dc)++;
    }
}


int getDC(dataImage* dataIm) {
    return dataIm->dc;
}