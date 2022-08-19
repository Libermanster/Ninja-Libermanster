#include "second_run.h"

inctractionArray second_run(inctractionArray* a, dataImage* d, symbolList* sl) {
    updateDataSymbolsInList(sl,a);

    
    for(int i=0;i<a->ic;i++) {
        if(a->arr[i].labelSwitch==1) 
        {
            if(labelExsits(a->arr[i].format.formatType.labelName)==1) 
            {
                fillArray(getSymbolAdress(a->arr[i].format.formatType.labelName,sl),8,a->arr[a->ic].format.formatType.dataFormat.data);
                fillArray(getSymbolSource(a->arr[i].format.formatType.labelName,sl),2,a->arr[a->ic].format.formatType.dataFormat.are);
            }
            else     
            {
                /*error: label doenst exisits */
            }
        }
    }
}