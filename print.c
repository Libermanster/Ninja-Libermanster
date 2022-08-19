#include "print.h"

void printObject(char* name ,dataImage * d, inctractionArray* a) {
    FILE* fp;
    char* fname = stringConnect(name, ".ob");
    int i = 0;
    int k = 0;
    int p=0;
    char array[10];
    char z[2];
    char s[2];
    int num;
    fp = fopen(fname, "w");
    decTo32(a->ic, s);
    decTo32(d->dc, z);
    fprintf(fp,"%s %s\n",s,z); /*prints ic count and dc count*/
    for(i=0;i<a->ic;i++)
    {
        
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
                 num = binToDec(array);
                decTo32(i+100, p);
                decTo32(num, s);
                fprintf(fp,"%s %s\n",z,s);
                continue;

            case 2:
                
                for(k=0,p=0;k<=3;k++,p++)
                    array[k]=a->arr[i].format.formatType.registerFormat.firstOperandRegister[p];
                for(p=0;k<=7;k++,p++)
                    array[k]=a->arr[i].format.formatType.registerFormat.secondOperandRegister[p];
                for(p=0;k<=9;k++,p++) 
                    array[k]=a->arr[i].format.formatType.registerFormat.are[p]; 
                 num = binToDec(array);
                decTo32(i+100,z);
                decTo32(num,s);
                fprintf(fp,"%s %s\n",z,s);
                continue;

            case 3:
                
                for(k=0,p=0;k<=7;k++,p++)
                    array[k]=a->arr[i].format.formatType.dataFormat.data[p];
                for(p=0;k<=9;k++,p++)
                    array[k]=a->arr[i].format.formatType.dataFormat.are[p];
                 num = binToDec(array);
                decTo32(i+100,z);
                decTo32(num,s);
                fprintf(fp,"%s %s\n",z,s);
                continue;
        }
    }


    for (k=0;k<d->dc;k++) 
    {
        decTo32(i+100,z);
        decTo32(d->dataArray[k],s);
        fprintf(fp,"%s %s\n",z,s);    
    }

}


