
MMN: MMN14.o util.o
	gcc -g -ansi -Wall -pedantic MMN14.o util.o -o MMN
MMN14.o: MMN14.c MMN14.h
	gcc -g -c -ansi -Wall -pedantic MMN14.c -o MMN14.o
dataImage.o: dataImage.c dataImage.h
	gcc -g -c -ansi -Wall -pedantic dataImage.c -o dataImage.o
util.o: util.c util.h
	gcc -g -c -ansi -Wall -pedantic util.c -o util.o