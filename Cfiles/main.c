#include "../Hfiles/main.h"


int main(int argc, char *argv[])
{
   
    int i;
    dataImage* d;
    inctractionArray* a;
    symbolList* sl;
    externalList* el;
    int errorSwitch;
    int externSwitch;
    int entrySwitch;

    for (i = 1; i < argc; i++)
    {
        char *fname;
        FILE *fp;
        errorSwitch = 0;
        externSwitch = 0;
        entrySwitch = 0;
        fname = stringConnect(argv[i], ".as");
        fp = fopen(fname, "r");
        fp = preasmbler_algorithm(fp,argv[i]); 
        a = createInstractionArray();
        d = createDataImage();
        sl = createSymbolTable();
        el = createExternTable();
        fname = stringConnect(argv[i], ".am");
        fclose (fp);
        fp = fopen(fname, "r");
        first_run_algorithm(fp,a,d,sl,el,&errorSwitch,&entrySwitch,&externSwitch);
        fclose (fp);
        if(errorSwitch==0) {
            second_run(a,d,sl);
            printObject(argv[i],d,a);
            if(externSwitch==1) {
                printExtern(argv[i],el);
            }
            if(entrySwitch==1) {
                printEntry(argv[i],sl);
            }   
        }
        free(d);
        free(a);
        free(sl);
        free(el);

            
    }


    return 0;

}


