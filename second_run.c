#include "second_run.h"

void second_run(inctractionArray* a, dataImage* d, symbolList* sl) {
    int i;
    updateSymbolsInList(sl,a);


    for(i=0;i<a->ic;i++) {
        if(a->arr[i].labelSwitch==1) 
        {
            if(isLabelExsits(a->arr[i].format.formatType.labelName,sl)==1) 
            {
                decToBin(getSymbolAdress(a->arr[i].format.formatType.labelName,sl),8,a->arr[a->ic].format.formatType.dataFormat.data);
                decToBin(getSymbolSource(a->arr[i].format.formatType.labelName,sl),2,a->arr[a->ic].format.formatType.dataFormat.are);
                a->arr[a->ic].format.formatTypeIndicator = 3;
            }
            /*     
            {
                error: label doenst exisits 
            } */
        }
    }
}





