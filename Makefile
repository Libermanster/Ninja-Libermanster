
MMN14: hello.o calc.o
	gcc -ansi -Wall -pedantic hello.o -o hello
hello.o: hello.c
	gcc -c -ansi -Wall -pedantic hello.c -o hello.o
calc.o: calc.c
	gcc -c -ansi -Wall -pedantic calc.c -o calc.o