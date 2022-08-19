
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "util.h"

#ifndef MAX_MEMORY
#define MAX_MEMORY 264
#endif

#ifndef DATA_IMAGE
#define DATA_IMAGE
typedef struct dataImage 
{
    int dc;/*0??*/
    int dataArray[MAX_MEMORY];
    
} dataImage;

dataImage* createDataImage();

void addInt(char* , dataImage*);

void addString(char* , dataImage*);

int getDC(dataImage*);
#endif
