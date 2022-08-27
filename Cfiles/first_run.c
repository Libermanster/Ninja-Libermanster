#include "../Hfiles/first_run.h"

void first_run_algorithm(FILE * fp, inctractionArray * Iarr, dataImage * dataIm, symbolList * sl, externalList * el, int *errorSwitch,int *entrySwitch, int *externSwitch) {
    
    char* line = malloc(sizeof(char)*(MAX_LINE+1));
    int lineCounter;
    lineCounter = 0;
    while(NULL != fgets(line, MAX_LINE+1, fp)) 
    {
        int symbolInTheLine = 0;
        symbol *s; /*  check with an expert that it doesnt delete the prevoius labels */
        char *name;
        if(isEmpty(line)||isComment(line))
        {
            continue;
        }
        line = &line[countSpaces(line)];  /* deletes the spaces in the start  */
        /*first word is .entry*/
        if (startsWithWord(line, ".entry"))
        {
            line += 6; /* // 6 == strlen(".entry")  */
            line = &line[countSpaces(line)];
            name = getNextWord(line);/*  check if the pointers shit is correct, its complicated in this line. */
            s = createSymbol(name,0,UNKNOWN,ENTRY);
            addSymbolToList(s,sl);
            *entrySwitch = 1;
            free(name);
            continue;
        }
        /*first word is .extern*/
        if (startsWithWord(line, ".extern"))
        {
            line += 7; /* // 7 == strlen(".extern")  */
            line = &line[countSpaces(line)];
            name = getNextWord(line);/*  check if the pointers shit is correct, its complicated in this line. */
            s = createSymbol(name,0,UNKNOWN,EXTERNAL);
            addSymbolToList(s,sl);/*  check problems with the label s pointer how does it work */
            *externSwitch = 1;
            free(name);
            continue;
        }
        lineCounter++;
        /*first word is label*/
        if(startsWithLabel(line))
        { 
            name  = malloc(sizeof(char) * MAX_LINE);
            getLabelName(line,name);
            if(isLabelExsits(name,sl)==1){
                if(isEntryLabel(name,sl)==1) {
                    symbolInTheLine = 1;
                    s = getLabelByName(name,sl);
                    line += strlen(get_symbol_name(s)) + 1;
                    line = &line[countSpaces(line)];  
                }
                else {
                    printf("ERROR IN LINE: %d , LABEL IS ALREADY DEFINED\n",lineCounter);
                    *errorSwitch=1;
                    continue;
                }
            }
            else 
            {
            symbolInTheLine = 1;
            s = createSymbol(name,0,UNKNOWN,NONE);
            free(name); 
            line += strlen(get_symbol_name(s)) + 1;
            line = &line[countSpaces(line)];
            }
        }
        /*first word is .data*/
        if (startsWithWord(line, ".data")) 
        {
            char* number; 
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                if(isEntryLabel(get_symbol_name(s),sl)==0) {
                    addSymbolToList(s,sl);
                }
            }
            
            line += 5;
            line = &line[countSpaces(line)];
            number = strtok(line, ",");
            addInt(number, dataIm); 
            while (NULL != (number = strtok(NULL, ",")))
            {
            addInt(number, dataIm);
            }
            free(number);
            continue;
        }
        /*first word is .string*/
        if(startsWithWord(line,".string")) 
        {
            char* end;
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                if(isEntryLabel(get_symbol_name(s),sl)==0) {
                    addSymbolToList(s,sl);
                }
            }
            line+=7;
            line = &line[countSpaces(line)];
            /*if (line[0] != '"')
            {
            error(eh, NOT_A_STRING, 0);
            continue;
            }*/
            line++;
            if (NULL != (end = strchr(line, '"')))
            {
                if (isLastWord(end))
                {
                    *end = '\0';
                    addString(line, dataIm);

                    continue;
                }
                else 
                {

                   /*  //error */
                }
            }
            else
            {
                /*//error */
            }
        }
        /*first word is .struct*/
        if(startsWithWord(line,".struct"))/*  //might not work needs a check. */
        {
            char* end; 
            char* numAndString; 
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                if(isEntryLabel(get_symbol_name(s),sl)==0) {
                    addSymbolToList(s,sl);
                }
            }
            
            line+=7;
            line = &line[countSpaces(line)];
            numAndString = strtok(line, ",");
            addInt(numAndString, dataIm);
            numAndString = strtok(NULL, ",");
            numAndString += countSpaces(numAndString);
            /*if (numAndString[0] != '"')
            {
                error(eh, NOT_A_STRING, 0);
                continue;
            }*/
            numAndString++;
            if (NULL != (end = strchr(numAndString, '"'))) 
            {
                if(isLastWord(end)) {
                    *end =  '\0';
                    addString(numAndString,dataIm);
                    continue;
                } else
                {
                    /*error*/
                    printf("error first_run-> startsWithWord .struct -> isLastWord\n");
                }

            } else
            {
                /*error*/   
                printf("error first_run-> startsWithWord .struct\n");
            }
        } else
        {
            int i;
            char *temp;
            int opcode;
            operand operands[3];
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getIC(Iarr));
                setLabelType(s,INCTRACTION); 
                if(isEntryLabel(get_symbol_name(s),sl)==0) {
                    addSymbolToList(s,sl);
                }
            }
            
        
            i=0;
            
            
            line += countSpaces(line);
            temp = getNextWord(line);
            line += strlen(temp);
            opcode = getOpcode(temp);
            if (opcode == -1)
            {
                printf("ERROR IN LINE: %d , UNKNOWN OPCODE\n",lineCounter);
                *errorSwitch=1;
                continue;    
            }

            if(isEmpty(line)) { /* no operands */
                addInstractionToArray(Iarr,opcode,operands,i);
                continue;
            }

            temp = strtok(line, ",");
            if(temp!=NULL) { /* two operands */
                i++;
                operands[i] = createOperand(temp,el,lineCounter,sl,Iarr);
                temp = strtok(NULL, ",");
                if(temp && countSpaces(temp) != strlen(temp)) {
                    i++;
                    operands[i]=createOperand(temp,el,lineCounter,sl,Iarr);
                }
                if(checkOperandsError(opcode,operands,i,lineCounter)==0) {
                    *errorSwitch=1;
                    continue;
                }
                else {
                     addInstractionToArray(Iarr,opcode,operands,i);
                    continue;
                }
               
            }
            else {
            i++; /* one operand */
            operands[i] = createOperand(line,el,lineCounter,sl,Iarr);
            if(checkOperandsError(opcode,operands,i,lineCounter)==0) {
                    *errorSwitch=1;
                    continue;
                }
            addInstractionToArray(Iarr,opcode,operands,i);      
            continue;  
            }
        }
    } 
}