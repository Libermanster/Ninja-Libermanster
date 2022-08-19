#include "first_run.h"

FILE first_run_algorithm(FILE* fp, inctractionArray* Iarr, dataImage* dataIm, symbolList* sl) {
    
    char* line;
    while(NULL != fgets(line, MAX_LINE+1, fp)) 
    {
        
        int symbolInTheLine = 0;
        symbol *s; /*  //check with an expert that it doesnt delete the prevoius labels */
        
        if(isEmpty(line)||isComment(line)) /* //שורה ריקה או הערה,להגיד ליונש לעשות את זה, לבדוק לגבי מערכים ומצביעים בספר */
            continue;
        
        line = &line[countSpaces(line)];  /* //deletes the spaces in the start  */
    
        if (startsWithWord(line, ".entry"))
        {
            char *n;
            symbol *s;
            line += 6; /* // 6 == strlen(".entry")  */
            line = &line[countSpaces(line)];
            n = getNextWord(line);/*  //check if the pointers shit is correct, its complicated in this line. */
            s = createSymbol(n,0,UNKNOWN,ENTRY);
            free(n);
            addSymbolToList(s,sl);
            continue;
        }
        
        if (startsWithWord(line, ".extern"))
        {

            line += 7; /* // 7 == strlen(".extern")  */
            line = &line[countSpaces(line)];
            char *n = getNextWord(line);/*  //check if the pointers shit is correct, its complicated in this line. */
            symbol *s = createSymbol(n,0,UNKNOWN,EXTERNAL);
            free(n);
            addSymbolTolist(s,sl);/*  //check problems with the label s pointer how does it work */
            continue;
        }
    
        if(startsWithLabel(line))
        { 
            char* name;
            symbolInTheLine = 1;
            getLabelName(line,name);
            s = createSymbol(name,0,UNKNOWN,NONE);
            free(name); 
            line += strlen(get_symbol_name(s)) + 1;/*  // fowards the line nigga */
            line = &line[countSpaces(line)];
        }
        
        if (startsWithWord(line, ".data")) 
        {
            char* number; 
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                addSymbolTolist(s,sl);
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
        
        if(startsWithWord(line,".string")) 
        {
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);  
                addSymbolTolist(s,sl);
            }
            char* end;
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
             /*    //error */
            }
        }
        if(startsWithWord(line,".struct"))/*  //might not work needs a check. */
        {
              
            char* numAndString; 
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);    
                addSymbolTolist(s,sl);
            }
            char* end;
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
                }
                /*else*/
                /* //error */
            }
            /* else
                /* //error */
            
        }
        
        else{
            
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getIC(Iarr));
                setLabelType(s,INCTRACTION); 
                addSymbolTolist(s,sl);
            }
            
            
            int i=0;
            char *temp;
            int opcode;
            operand operands[3];
            line += countSpaces(line);
            temp = getNextWord(line);
            line += strlen(temp);
            opcode = getOpcode(temp);
            free(temp);
            if (opcode == -1)
            {
                /*error(eh, UNKNOWN_OPCODE, 1, part);*/
                continue;
            }
            line += countSpaces(line);
            temp = strtok(line, ",");
            if(temp!=NULL) {
                i++;
                operands[i]=createOperand(temp);
                temp = strtok(NULL, ",");
                if(temp && countSpaces(temp) != strlen(temp)) {
                    i++;
                    operands[i]=createOperand(temp);
                }
            }
            addInstractionToArray(Iarr,opcode,operands,i);
            continue;
            
            
            
        }
    }
    
    
}