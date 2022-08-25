

#include "../Hfiles/dataImage.h"

dataImage* createDataImage() {
    dataImage* ptr = malloc(sizeof(dataImage));
    ptr->dc = 0;
    return ptr;
}

void addInt(char* number, dataImage* dataIm)
{
    int num;
    number += countSpaces(number); /* delete spaces in the start */
    deleteSpacesAtEnd(number); /* delete spaces in the end*/
    if(number[0]=='-') {
        number++;
        num = -atoi(number);
    }
    else {
    num = atoi(number); 
    }
    dataIm->dataArray[dataIm->dc] = num; 
    dataIm->dc++;
}


void addString(char* string, dataImage* dataIm){
    int length = strlen(string)+1;
    int i;
    for(i=0;i<length;i++) 
    {
        dataIm->dataArray[dataIm->dc] = (int)string[i];
        dataIm->dc++;
    }
}


int getDC(dataImage* dataIm) {
    return dataIm->dc;
}