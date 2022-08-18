

int main(int argc, char *argv[])
{
    int i;
    for (i = 1; i < argc; i++)
    {
        char *fname = stringConnect(argv[i], ".as");
        FILE *fp = fopen(fname, "r");
        preasmbler_algorithm(fp,fname);
        inctractionArray* a = createInctractionArray();
        dataImage* d = createDataImage();
        symbolList* sl = createSymbolList();
        first_run(fp,a,d,sl);
        second_run(a,d,sl);
        print(fp,a,d);
        
    }

}