#include "main.h"
#include "first_run.h"

int main(int argc, char *argv[])
{
    int i;
    for (i = 1; i < argc; i++)
    {
        char *fname = stringConnect(argv[i], ".as");
        FILE *fp = fopen(fname, "r");
        preasmbler_algorithm(fp,fname);
        inctractionArray* a = createInstractionArray();
        dataImage* d = createDataImage();
        symbolList* sl = createSymbolList();
        first_run(fp,a,d,sl);
        second_run(a,d,sl);
        printObject(fname,a,d);
        
    }

}