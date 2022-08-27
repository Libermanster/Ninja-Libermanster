#include "../Hfiles/second_run.h"

void second_run(inctractionArray* a, dataImage* d, symbolList* sl) {
    int i;
    int symbolAdress;
    int symbolSource;
    i=0;
    
    updateSymbolsInList(sl,a); /* add 100 and ic to needed labels*/


    for(;i<a->ic;i++) { /* fills theinctraction  array, label name decoded to address*/
        if(a->arr[i].labelSwitch==1) 
        {
            
                symbolAdress = getSymbolAdress(a->arr[i].format.formatType.labelName,sl);
                symbolSource = getSymbolSource(a->arr[i].format.formatType.labelName,sl);
                decToBin(symbolAdress,8,a->arr[i].format.formatType.dataFormat.data);
                decToBin(symbolSource,2,a->arr[i].format.formatType.dataFormat.are);
                a->arr[i].format.formatTypeIndicator = 3;
          
        }
    }
}





