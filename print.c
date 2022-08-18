void printTranslation(dataImage * d, inctractionArray* a,) {
    FILE *fp;
    fp = fopen("object.as", "w");
    int i = 0;
    char array[10];
    while(a->arr[i]!=NULL) 
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
                fprintf(fp,"%d\n",num);
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
                fprintf(fp,"%d\n",num);
                continue;

            case 3:
                int k;
                for(k=0,k<=7,k++)
                    array[k]=a->arr[i].format.formatType.dataFormat.data;
                for(k;k<=9;k++)
                    array[k]=a->arr[i].format.formatType.dataFormat.are;
                int num = BinToDec(array);
                fprintf(fp,"%d\n",num);
                continue;
        }

        i++;
    }
    fclose(fp);
}