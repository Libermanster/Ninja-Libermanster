#include "../Hfiles/main.h"


int main(int argc, char *argv[])
{
   
    int i;
    dataImage* d;
    inctractionArray* a;
    symbolList* sl;

    for (i = 1; i < argc; i++)
    {
        char *fname;
        FILE *fp;
        fname = stringConnect(argv[i], ".as");
        fp = fopen(fname, "r");
        fp = preasmbler_algorithm(fp,argv[i]); 
        a = createInstractionArray();
        d = createDataImage();
        sl = createSymbolTable();
        fname = stringConnect(argv[i], ".am");
        fclose (fp);
        fp = fopen(fname, "r");
        first_run_algorithm(fp,a,d,sl);
        fclose (fp);
        second_run(a,d,sl);
        printObject(argv[i],d,a);
        
    }
    return 0;

}


