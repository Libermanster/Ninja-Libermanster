#include "print.h"

void printObject(char* name ,dataImage * d, inctractionArray* a) {
    FILE* fp;
    char* fname = stringConnect(name, ".ob");
    fp = fopen(fname, "w");
    int i = 0;
    int k = 0;
    char array[10];
    char p[2];
    char s[2];
    decTo32(a->ic,s);
    decTo32(d->dc,p);
    fprintf(fp,"%s %s\n",s,p); /*prints ic count and dc count*/
    for(i=0;i<a->ic;i++)
    {
        
        switch(a->arr[i].format.formatTypeIndicator) 
        {
            case 1:
                int k;
                for(k=0,k<=3,k++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.opcode;
                for(k;k<=5;k++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.src;
                for(k;k<=7;k++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.dst;
                for(k;k<=9;k++)
                    array[k]=a->arr[i].format.formatType.opcodeFormat.are;
                int num = BinToDec(array);
                decTo32(i+100,p);
                decTo32(num,s);
                fprintf(fp,"%s %s\n",p,s);
                continue;

            case 2:
                int k;
                for(k=0,k<=3,k++)
                    array[k]=a->arr[i].format.formatType.registerFormat.firstOperandRegister;
                for(k=0,k<=7,k++)
                    array[k]=a->arr[i].format.formatType.registerFormat.secondOperandRegister;
                for(k=0,k<=9,k++) 
                    array[k]=a->arr[i].format.formatType.registerFormat.are; 
                int num = BinToDec(array);
                decTo32(i+100,p);
                decTo32(num,s);
                fprintf(fp,"%s %s\n",p,s);
                continue;

            case 3:
                int k;
                for(k=0,k<=7,k++)
                    array[k]=a->arr[i].format.formatType.dataFormat.data;
                for(k;k<=9;k++)
                    array[k]=a->arr[i].format.formatType.dataFormat.are;
                int num = BinToDec(array);
                decTo32(i+100,p);
                decTo32(num,s);
                fprintf(fp,"%s %s\n",p,s);
                continue;
        }
    }


    for (k=0;k<d->dc;k++) 
    {
        decTo32(i+100,p);
        decTo32(d->dataArray[k],s);
        fprintf(fp,"%s %s\n",p,s);    
    }

}


