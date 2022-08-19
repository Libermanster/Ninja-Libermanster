MMN: Ofiles/main.o Ofiles/dataImage.o Ofiles/second_run.o Ofiles/first_run.o Ofiles/pre_asmbler.o Ofiles/util.o Ofiles/symbol_util.o Ofiles/macro_util.o Ofiles/inctractionArray.o Ofiles/baseTranslator.o Ofiles/opcode.o Ofiles/operand.o Ofiles/print.o
	gcc -g -ansi -Wall -pedantic Ofiles/main.o Ofiles/dataImage.o Ofiles/second_run.o Ofiles/first_run.o Ofiles/pre_asmbler.o Ofiles/util.o Ofiles/symbol_util.o Ofiles/macro_util.o Ofiles/inctractionArray.o Ofiles/baseTranslator.o Ofiles/opcode.o Ofiles/operand.o Ofiles/print.o -o MMN
Ofiles/main.o: main.c main.h
	gcc -g -c -ansi -Wall -pedantic main.c -o Ofiles/main.o
Ofiles/dataImage.o: dataImage.c dataImage.h
	gcc -g -c -ansi -Wall -pedantic dataImage.c -o Ofiles/dataImage.o
Ofiles/second_run.o: second_run.c second_run.h
	gcc -g -c -ansi -Wall -pedantic second_run.c -o Ofiles/second_run.o
Ofiles/first_run.o: first_run.c first_run.h
	gcc -g -c -ansi -Wall -pedantic first_run.c -o Ofiles/first_run.o
Ofiles/pre_asmbler.o: pre_asmbler.c pre_asmbler.h
	gcc -g -c -ansi -Wall -pedantic pre_asmbler.c -o Ofiles/pre_asmbler.o
Ofiles/util.o: util.c util.h
	gcc -g -c -ansi -Wall -pedantic util.c -o Ofiles/util.o
Ofiles/symbol_util.o: symbol_util.c symbol_util.h
	gcc -g -c -ansi -Wall -pedantic symbol_util.c -o Ofiles/symbol_util.o
Ofiles/macro_util.o: macro_util.c macro_util.h
	gcc -g -c -ansi -Wall -pedantic macro_util.c -o Ofiles/macro_util.o
Ofiles/inctractionArray.o: inctractionArray.c inctractionArray.h
	gcc -g -c -ansi -Wall -pedantic inctractionArray.c -o Ofiles/inctractionArray.o
Ofiles/baseTranslator.o: baseTranslator.c baseTranslator.h
	gcc -g -c -ansi -Wall -pedantic baseTranslator.c -o Ofiles/baseTranslator.o
Ofiles/opcode.o: opcode.c opcode.h
	gcc -g -c -ansi -Wall -pedantic opcode.c -o Ofiles/opcode.o
Ofiles/operand.o: operand.c operand.h
	gcc -g -c -ansi -Wall -pedantic operand.c -o Ofiles/operand.o
Ofiles/print.o: print.c print.h
	gcc -g -c -ansi -Wall -pedantic print.c -o Ofiles/print.o