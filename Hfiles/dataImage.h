#include "util.h"


#define MAX_MEMORY 264


#ifndef DATA_IMAGE
#define DATA_IMAGE
typedef struct dataImage 
{
    int dc;
    int dataArray[MAX_MEMORY];
    
} dataImage;

/*initialize data image*/
dataImage* createDataImage();

/*adds number to dataImage*/
void addInt(char* , dataImage*);


/*add string to dataImagie*/
void addString(char* , dataImage*);

/*get dataIamge counter*/
int getDC(dataImage*);
#endif
