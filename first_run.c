#include "first_run.h"

void first_run_algorithm(FILE * fp, inctractionArray * Iarr, dataImage * dataIm, symbolList * sl) {
    
    char* line = malloc(sizeof(char)*(MAX_LINE+1));
    while(NULL != fgets(line, MAX_LINE+1, fp)) 
    {
        
        int symbolInTheLine = 0;
        symbol *s; /*  //check with an expert that it doesnt delete the prevoius labels */
        char *name;
        if(isEmpty(line)||isComment(line))
        {
            continue;
        }
        line = &line[countSpaces(line)];  /* //deletes the spaces in the start  */
        /*first word is .entry*/
        if (startsWithWord(line, ".entry"))
        {
            line += 6; /* // 6 == strlen(".entry")  */
            line = &line[countSpaces(line)];
            name = getNextWord(line);/*  //check if the pointers shit is correct, its complicated in this line. */
            s = createSymbol(name,0,UNKNOWN,ENTRY);
            addSymbolToList(s,sl);
            free(name);
            continue;
        }
        /*first word is .extern*/
        if (startsWithWord(line, ".extern"))
        {
            line += 7; /* // 7 == strlen(".extern")  */
            line = &line[countSpaces(line)];
            name = getNextWord(line);/*  //check if the pointers shit is correct, its complicated in this line. */
            s = createSymbol(name,0,UNKNOWN,EXTERNAL);
            addSymbolToList(s,sl);/*  //check problems with the label s pointer how does it work */
            free(name);
            continue;
        }
        /*first word is label*/
        if(startsWithLabel(line))
        { 
            symbolInTheLine = 1;
            name  = malloc(sizeof(char) * MAX_LINE);
            getLabelName(line,name);
            s = createSymbol(name,0,UNKNOWN,NONE);
            free(name); 
            line += strlen(get_symbol_name(s)) + 1;/*  // fowards the line nigga */
            line = &line[countSpaces(line)];
        }
        /*first word is .data*/
        if (startsWithWord(line, ".data")) 
        {
            char* number; 
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                addSymbolToList(s,sl);
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
                addSymbolToList(s,sl);
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
                addSymbolToList(s,sl);
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
                addSymbolToList(s,sl);
            }
            
        
            i=0;
            
            
            line += countSpaces(line);
            temp = getNextWord(line);
            line += strlen(temp);
            opcode = getOpcode(temp);
            if (opcode == -1)
            {
                /*error*/
                printf("error first_run-> startsWithWord .struct\n");
                /*error(eh, UNKNOWN_OPCODE, 1, part);*/
                exit(0);
            }

            if(isEmpty(line)) { /* no operands */
                addInstractionToArray(Iarr,opcode,operands,i);
                continue;
            }

            temp = strtok(line, ",");
            if(temp!=NULL) { /* two operands */
                i++;
                operands[i]=createOperand(temp);
                temp = strtok(NULL, ",");
                if(temp && countSpaces(temp) != strlen(temp)) {
                    i++;
                    operands[i]=createOperand(temp);
                }
            addInstractionToArray(Iarr,opcode,operands,i);
            continue;
            }
            i++; /* one operand */
            operands[i] = createOperand(line);
            addInstractionToArray(Iarr,opcode,operands,i);      
            continue;  
        }
    } 
}