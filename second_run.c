#include "second_run.h"

void second_run(inctractionArray* a, dataImage* d, symbolList* sl) {
    int i;
    int symbolAdress;
    int symbolSource;
    i=0;
    
    updateSymbolsInList(sl,a);


    for(;i<a->ic;i++) {
        if(a->arr[i].labelSwitch==1) 
        {
            /*if(isLabelExsits(a->arr[i].format.formatType.labelName,sl)==1) 
            {*/
                symbolAdress = getSymbolAdress(a->arr[i].format.formatType.labelName,sl);
                symbolSource = getSymbolSource(a->arr[i].format.formatType.labelName,sl);
                decToBin(symbolAdress,8,a->arr[i].format.formatType.dataFormat.data);
                decToBin(symbolSource,2,a->arr[i].format.formatType.dataFormat.are);
                a->arr[i].format.formatTypeIndicator = 3;
           /* } */
            /*     
            {
                error: label doenst exisits 
            } */
        }
    }
}





