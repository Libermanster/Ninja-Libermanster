
MMN: Ofiles/MMN14.o Ofiles/util.o Ofiles/macro_util.o Ofiles/inctraction.o Ofiles/first_run.o Ofiles/second_run.o
	gcc -g -ansi -Wall -pedantic Ofiles/macro_util.o Ofiles/inctraction.o Ofiles/first_run.o Ofiles/second_run.o Ofiles/MMN14.o Ofiles/util.o -o Ofiles/MMN
Ofiles/MMN14.o: MMN14.c MMN14.h
	gcc -g -c -ansi -Wall -pedantic MMN14.c -o Ofiles/MMN14.o
Ofiles/dataImage.o: dataImage.c dataImage.h
	gcc -g -c -ansi -Wall -pedantic dataImage.c -o Ofiles/dataImage.o
Ofiles/util.o: util.c util.h
	gcc -g -c -ansi -Wall -pedantic util.c -o Ofiles/util.o
Ofiles/macro_util.o: macro_util.c macro_util.h
	gcc -g -c -ansi -Wall -pedantic macro_util.c -o Ofiles/macro_util.o
Ofiles/inctraction.o: inctraction.c inctraction.h
	gcc -g -c -ansi -Wall -pedantic inctraction.c -o Ofiles/inctraction.o
Ofiles/first_run.o: first_run.c first_run.h
	gcc -g -c -ansi -Wall -pedantic first_run.c -o Ofiles/first_run.o
Ofiles/second_run.o: second_run.c second_run.h
	gcc -g -c -ansi -Wall -pedantic second_run.c -o Ofiles/second_run.o