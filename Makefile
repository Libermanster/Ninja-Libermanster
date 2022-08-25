MMN: Ofile/main.o Ofile/dataImage.o Ofile/second_run.o Ofile/first_run.o Ofile/pre_asmbler.o Ofile/util.o Ofile/symbol_util.o Ofile/macro_util.o Ofile/inctractionArray.o Ofile/baseTranslator.o Ofile/opcode.o Ofile/operand.o Ofile/print.o
	gcc -g -ansi -Wall -pedantic Ofile/main.o Ofile/dataImage.o Ofile/second_run.o Ofile/first_run.o Ofile/pre_asmbler.o Ofile/util.o Ofile/symbol_util.o Ofile/macro_util.o Ofile/inctractionArray.o Ofile/baseTranslator.o Ofile/opcode.o Ofile/operand.o Ofile/print.o -o MMN
Ofile/main.o: Cfiles/main.c Hfiles/main.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/main.c -o Ofile/main.o
Ofile/dataImage.o: Cfiles/dataImage.c Hfiles/dataImage.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/dataImage.c -o Ofile/dataImage.o
Ofile/second_run.o: Cfiles/second_run.c Hfiles/second_run.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/second_run.c -o Ofile/second_run.o
Ofile/first_run.o: Cfiles/first_run.c Hfiles/first_run.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/first_run.c -o Ofile/first_run.o
Ofile/pre_asmbler.o: Cfiles/pre_asmbler.c Hfiles/pre_asmbler.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/pre_asmbler.c -o Ofile/pre_asmbler.o
Ofile/util.o: Cfiles/util.c Hfiles/util.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/util.c -o Ofile/util.o
Ofile/symbol_util.o: Cfiles/symbol_util.c Hfiles/symbol_util.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/symbol_util.c -o Ofile/symbol_util.o
Ofile/macro_util.o: Cfiles/macro_util.c Hfiles/macro_util.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/macro_util.c -o Ofile/macro_util.o
Ofile/inctractionArray.o: Cfiles/inctractionArray.c Hfiles/inctractionArray.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/inctractionArray.c -o Ofile/inctractionArray.o
Ofile/baseTranslator.o: Cfiles/baseTranslator.c Hfiles/baseTranslator.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/baseTranslator.c -o Ofile/baseTranslator.o
Ofile/opcode.o: Cfiles/opcode.c Hfiles/opcode.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/opcode.c -o Ofile/opcode.o
Ofile/operand.o: Cfiles/operand.c Hfiles/operand.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/operand.c -o Ofile/operand.o
Ofile/print.o: Cfiles/print.c Hfiles/print.h
	gcc -g -c -ansi -Wall -pedantic Cfiles/print.c -o Ofile/print.o