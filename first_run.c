#include util.h 



FILE first_run_algorithm(*FILE fp, *inctractionArray Iarr, *dataImage dataIm, symbolList* sl) {
    
    char line[MAX_LINE+1];
    symbolList *sl = NULL;
    while(NULL != fgets(line, MAX_LINE, fp)) 
    {
        
        int symbolInTheLine = 0;
        symbol *s = NULL; //check with an expert that it doesnt delete the prevoius labels
        
        if(isEmpty(&line)||isComment(&line)) //שורה ריקה או הערה,להגיד ליונש לעשות את זה, לבדוק לגבי מערכים ומצביעים בספר
            continue;
        
        line = &line[skip_spaces(line)];  //deletes the spaces in the start 
    
        if (startsWithWord(line, ".entry"))
        {
            line += 6; // 6 == strlen(".entry") 
            line = &line[skip_spaces(line)];
            char *n = getNextWord(line); //check if the pointers shit is correct, its complicated in this line.
            symbol *s = create_symbol(n,0,UNKNOWN,ENTRY);
            free(n);
            addSymbolTolist(s,sl);
            continue;
        }
        
        if (startsWithWord(line, ".extern"))
        {
            line += 7; // 7 == strlen(".extern") 
            line = &line[skip_spaces(line)];
            char *n = getNextWord(line); //check if the pointers shit is correct, its complicated in this line.
            symbol *s = create_symbol(n,0,UNKNOWN,EXTERNAL);
            free(n);
            addSymbolTolist(s,sl); //check problems with the label s pointer how does it work
            continue;
        }
    
        if(startsWithLabel(&line))
        { 
            symbolInTheLine = 1;
            char* name = getLabelName(&line);
            s = create_symbol(name,0,UNKNOWN,NONE);
            free(name); 
            line += strlen(get_symbol_name(s)) + 1; // fowards the line nigga
            line = &line[skip_spaces(line)];
        }
        
        if (starts_with_word(line, ".data")) 
        {
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);
                addSymbolTolist(s,sl);
            }
            
            line += 5;
            line = &line[skip_spaces(line)];
            char* number; 
            number = strtok(line, ",");
            addInt(number, dataIm); 
            while (NULL != (number = strtok(NULL, ",")))
            {
            addInt(number, dataIm);
            }
            continue;
        }
        
        if(starts_with_word(line,".string")) 
        {
            char *end;
            
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);  
                addSymbolTolist(s,sl);
            }
            
            line+=7;
            line = &line[skip_spaces(line)];
            if (line[0] != '"')
            {
            error(eh, NOT_A_STRING, 0);
            continue;
            }
            line++;
            if (NULL != (end = strchr(line, '"')))
            {
                if (is_last_word(end))
                {
                    *end = '\0';
                    addString(line, dataIm);
                    continue;
                }
                else 
                    //error
            }
            else
                //error
        }
        if(starts_with_word(line,".struct")) //might not work needs a check.
        {
            
            char* end;
            
            if(symbolInTheLine==1)
            {
                setLabelAddress(s,getDC(dataIm));
                setLabelType(s,DATA);    
                addSymbolTolist(s,sl);
            }
            
            line+=7;
            line = &line[skip_spaces(line)];
            char* numAndString; 
            numAndString = strtok(line, ",");
            addInt(numAndString, dataIm);
            numAndString = strtok(NULL, ",")
            numAndString += skip_spaces(numAndString);
            if (numAndString[0] != '"')
            {
            error(eh, NOT_A_STRING, 0);
            continue;
            }
            numAndString++;
            if (NULL != (end = strchr(numAndString, '"'))) 
            {
                if(is_last_word(end)) {
                *end =  '\0';
                addString(numAndString,dataIm);
                continue;
                }
                else
                //error
            }
            else
                //error
            
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
            line += skip_spaces(line);
            temp = get_next_word(line);
            line += strlen(part);
            opcode = get_opcode(temp);
            free(temp);
            if (opcode == -1)
            {
            error(eh, UNKNOWN_OPCODE, 1, part);
            continue;
            }
            line += skip_spaces(line);
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