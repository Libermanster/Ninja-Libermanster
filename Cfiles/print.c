#include "../Hfiles/print.h"

void printObject(char* name ,dataImage * d, inctractionArray* a) {
    FILE* fp;
    char* fname;
    int i = 0;
    int k = 0;
    int p=0;
    char z[2];
    char s[2];
    int num;
    fname = stringConnect(name, ".ob");
    fp = fopen(fname, "w");
    decTo32(a->ic, s);
    decTo32(d->dc, z);
    fprintf(fp,"%c%c %c%c\n",s[0],s[1],z[0],z[1]); /*prints ic count and dc count*/
    for(i=0;i<a->ic;i++)
    {
        int array[10] = {0};
        switch(a->arr[i].format.formatTypeIndicator) 
        {
            case 1:
                
                for(k=0,p=0;k<=3;k++,p++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.opcode[p];
                for(p=0;k<=5;k++,p++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.src[p];
                for(p=0;k<=7;k++,p++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.dst[p];
                for(p=0;k<=9;k++,p++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.are[p];
                /*print binrary*/

                /*for(p=0;p<=9;p++) {
                    fprintf(fp,"%d",array[p]);
                }
                fprintf(fp,"\n");*/
                num = binToDec(array);

                /*pfint base 32*/
                decTo32(i+100,z);
                decTo32(num,s);
                fprintf(fp,"%c%c %c%c\n",z[0],z[1],s[0],s[1]);
                continue;

            case 2:
                
                for(k=0,p=0;k<=3;k++,p++)
                    array[k]=a->arr[i].format.formatType.registerFormat.firstOperandRegister[p];
                for(p=0;k<=7;k++,p++)
                    array[k]=a->arr[i].format.formatType.registerFormat.secondOperandRegister[p];
                for(p=0;k<=9;k++,p++) 
                    array[k]=a->arr[i].format.formatType.registerFormat.are[p]; 
                 /*print binrary*/

                 /*for(p=0;p<=9;p++) {
                    fprintf(fp,"%d",array[p]);
                }
                fprintf(fp,"\n");*/
                 num = binToDec(array);
                /*pfint base 32*/
                decTo32(i+100,z);
                decTo32(num,s);
                fprintf(fp,"%c%c %c%c\n",z[0],z[1],s[0],s[1]);
                continue;

            case 3:
                
                for(k=0,p=0;k<=7;k++,p++)
                    array[k]=a->arr[i].format.formatType.dataFormat.data[p];
                for(p=0;k<=9;k++,p++)
                    array[k]=a->arr[i].format.formatType.dataFormat.are[p];
                /*print binrary*/

                /*for(p=0;p<=9;p++) {
                    fprintf(fp,"%d",array[p]);
                }
                fprintf(fp,"\n");*/
                  num = binToDec(array);
                /*pfint base 32*/
                decTo32(i+100,z);
                decTo32(num,s);
                fprintf(fp,"%c%c %c%c\n",z[0],z[1],s[0],s[1]);
                continue;
        }
    }


    for (k=0;k<d->dc;k++,i++) 
    {
        decTo32(i+100,z);
        decTo32(d->dataArray[k],s);
        fprintf(fp,"%c%c %c%c\n",z[0],z[1],s[0],s[1]);    
    }
    fclose(fp);

}



void printEntry(char* name, symbolList* sl) {
    FILE* fp;
    char* fname;
    symbol* temp;
    fname = stringConnect(name, ".ent");
    fp = fopen(fname, "w");
    temp = sl->first;
    while(temp!=NULL) {
        if(temp->source == ENTRY ) {
            fprintf(fp,"name: %s  ,  address: %d\n",temp->name,temp->address);
        }
        temp = temp->next;
    }
    fclose(fp);
}

void printExtern(char* name, externalList* el) {
     FILE* fp;
    char* fname;
    externSymbol* temp;
    fname = stringConnect(name, ".ext");
    fp = fopen(fname, "w");
    temp = el->first;
    while(temp!=NULL) {
        fprintf(fp,"name: %s  ,  address: %d\n",temp->name,temp->address+100);
        temp = temp->next;
    }
    fclose(fp);
}


