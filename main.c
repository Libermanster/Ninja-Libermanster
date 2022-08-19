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
    for (i = 1; i < argc; i++)
    {
        char *fname = stringConnect(argv[i], ".as");
        FILE *fp = fopen(fname, "r");
        preasmbler_algorithm(fp,fname);
        inctractionArray* a = createInstractionArray();
        dataImage* d = createDataImage();
        symbolList* sl = createSymbolTable();
        first_run(fp,a,d,sl);
        second_run(a,d,sl);
        printObject(fname,a,d);
        
    }
    return 0;

}