#include "../Hfiles/first_run.h"

void first_run_algorithm(FILE * fp, inctractionArray * Iarr, dataImage * dataIm, symbolList * sl, externalList * el, int *errorSwitch,int *entrySwitch, int *externSwitch) {
    
    char* line = malloc(sizeof(char)*(MAX_LINE+1));
    int lineCounter;
    lineCounter = 0;
    while(NULL != fgets(line, MAX_LINE+1, fp)) 
    {
        lineCounter++;
        int symbolInTheLine = 0;
        symbol *s; 
        char *name;
        if(isEmpty(line)||isComment(line)) /*checks if the line is empty or comment*/
        {
            continue;
        }
        line = &line[countSpaces(line)];  /* deletes the spaces in the start, we use this trick throughout the code  */

        if (startsWithWord(line, ".entry"))  /*first word is .entry*/
        {
            line += 6; /*  6 is the length of entry, we move foward in the line to get the next word  */
            line = &line[countSpaces(line)];
            name = getNextWord(line);
            s = createSymbol(name,0,UNKNOWN,ENTRY);
            addSymbolToList(s,sl);
            *entrySwitch = 1;
            free(name);
            continue;
        }
        
        if (startsWithWord(line, ".extern")) /*first word is .extern*/
        {
            line += 7; /* 7 is the length of extern, we move foward in the line to get the next word  */
            line = &line[countSpaces(line)];
            name = getNextWord(line);
            s = createSymbol(name,0,UNKNOWN,EXTERNAL);
            addSymbolToList(s,sl);
            *externSwitch = 1;
            free(name);
            continue;
        }
        
        if(startsWithLabel(line)) /*first word is a label*/
        { 
            name  = malloc(sizeof(char) * MAX_LINE);
            getLabelName(line,name);
            if(isLabelExsits(name,sl)==1){ /*if label already  exsits, then check if its an entry label or output an error*/
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
            else /*else add the label to symbolList*/
            {
            symbolInTheLine = 1;
            s = createSymbol(name,0,UNKNOWN,NONE);
            free(name); 
            line += strlen(get_symbol_name(s)) + 1;
            line = &line[countSpaces(line)];
            }
        }
        
        if (startsWithWord(line, ".data")) /*first word is .data*/
        {
            char* number; 
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                if(isEntryLabel(get_symbol_name(s),sl)==0) { /*if its not an entry label add to list, if its an entry label it is already added to the list*/
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
        
        if(startsWithWord(line,".string")) /*first word is .string*/
        {
            char* end;
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                if(isEntryLabel(get_symbol_name(s),sl)==0) { /*if its not an entry label add to list, if its an entry label it is already added to the list*/
                    addSymbolToList(s,sl);
                }
            }
            line+=7;
            line = &line[countSpaces(line)];
            line++;
            if (NULL != (end = strchr(line, '"')))
            {
                if (isLastWord(end))
                {
                    *end = '\0'; /*nice trick,  we change the last " to \0 to mark end of string and for copying being easy*/
                    addString(line, dataIm);

                    continue;
                }
                continue;
            }
        /*first word is .struct*/
        if(startsWithWord(line,".struct")) /*first word is .struct*/
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
                    continue;
                }
            } 
        } 
        else /* else we have an inctraction */
        {
            int i;
            char *temp;
            int opcode;
            operand operands[3]; /*makes an array of operands*/
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
            opcode = getOpcode(temp); /* gets opcode number */
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