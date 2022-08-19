#include "main.h"


int main(int argc, char *argv[])
{
    /*int i = 8;
    int arr[10];
    decToBin(6,6,arr);
    printf("hello world!\n");
    printf("i = %d\n",i);
    for(i=0;i<6;++i)
        printf("%d",arr[i]);
    printf("\n");
    */
    int i;
    dataImage* d;
    inctractionArray* a;
    symbolList* sl;

    for (i = 1; i < argc; i++)
    {
        char *fname = stringConnect(argv[i], ".as");
        FILE *fp = fopen(fname, "r");
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


