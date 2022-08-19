#include "second_run.h"

inctractionArray second_run(inctractionArray* a, dataImage* d, symbolList* sl) {
    updateDataSymbolsInList(sl,a);

    
    for(i=0;i<a->ic;i++) {
        if(a->arr[i].labelSwitch==1) 
        {
            if(labelExsits(a->arr[i].format.labelName)==1) 
            {
                fillArray(getSymbolAdress(a->arr[i].format.labelName),8,a->arr[a->dc].format.formatType.dataFormat.data);
                fillArray(getSymbolSource(a->arr[i].format.labelName),2,a->arr[a->dc].format.formatType.dataFormat.are);
            }
            else 
                /*error: label doenst exisits */
            
        }
    }
}