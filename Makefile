
MMN: Ofiles/MMN14.o Ofiles/util.o
	gcc -g -ansi -Wall -pedantic Ofiles/MMN14.o Ofiles/util.o -o Ofiles/MMN
Ofiles/MMN14.o: MMN14.c MMN14.h
	gcc -g -c -ansi -Wall -pedantic MMN14.c -o Ofiles/MMN14.o
Ofiles/dataImage.o: dataImage.c dataImage.h
	gcc -g -c -ansi -Wall -pedantic dataImage.c -o Ofiles/dataImage.o
Ofiles/util.o: util.c util.h
	gcc -g -c -ansi -Wall -pedantic util.c -o Ofiles/util.o