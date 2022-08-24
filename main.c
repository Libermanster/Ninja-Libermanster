#include "main.h"


int main(int argc, char *argv[])
{
   
    int i;
    dataImage* d;
    inctractionArray* a;
    symbolList* sl;

    for (i = 1; i < argc; i++)
    {
        /*char *fname = stringConnect(argv[i], ".as");*/
        char fname[] = "testmodi";
        FILE *fp;
        /*strcpy(fname,argv[i]);*/
        fp = fopen(fname, "r");
        /*preasmbler_algorithm(fp,fname); */
        a = createInstractionArray();
        d = createDataImage();
        sl = createSymbolTable();
        first_run_algorithm(fp,a,d,sl);
        second_run(a,d,sl);
        printObject(fname,d,a);
        
    }
    return 0;

}


