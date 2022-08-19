MMN: main.o dataImage.o second_run.o first_run.o pre_asmbler.o util.o symbol_util.o macro_util.o inctractionArray.o baseTranslator.o opcode.o operand.o print.o
	gcc -g -ansi -Wall -pedantic main.o dataImage.o second_run.o first_run.o pre_asmbler.o util.o symbol_util.o macro_util.o inctractionArray.o baseTranslator.o opcode.o operand.o print.o -o MMN
main.o: main.c main.h
	gcc -g -c -ansi -Wall -pedantic main.c -o main.o
dataImage.o: dataImage.c dataImage.h
	gcc -g -c -ansi -Wall -pedantic dataImage.c -o dataImage.o
second_run.o: second_run.c second_run.h
	gcc -g -c -ansi -Wall -pedantic second_run.c -o second_run.o
first_run.o: first_run.c first_run.h
	gcc -g -c -ansi -Wall -pedantic first_run.c -o first_run.o
pre_asmbler.o: pre_asmbler.c pre_asmbler.h
	gcc -g -c -ansi -Wall -pedantic pre_asmbler.c -o pre_asmbler.o
util.o: util.c util.h
	gcc -g -c -ansi -Wall -pedantic util.c -o util.o
symbol_util.o: symbol_util.c symbol_util.h
	gcc -g -c -ansi -Wall -pedantic symbol_util.c -o symbol_util.o
macro_util.o: macro_util.c macro_util.h
	gcc -g -c -ansi -Wall -pedantic macro_util.c -o macro_util.o
inctractionArray.o: inctractionArray.c inctractionArray.h
	gcc -g -c -ansi -Wall -pedantic inctractionArray.c -o inctractionArray.o
baseTranslator.o: baseTranslator.c baseTranslator.h
	gcc -g -c -ansi -Wall -pedantic baseTranslator.c -o baseTranslator.o
opcode.o: opcode.c opcode.h
	gcc -g -c -ansi -Wall -pedantic opcode.c -o opcode.o
operand.o: operand.c operand.h
	gcc -g -c -ansi -Wall -pedantic operand.c -o operand.o
print.o: print.c print.h
	gcc -g -c -ansi -Wall -pedantic print.c -o print.o