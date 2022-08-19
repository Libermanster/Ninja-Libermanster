
MMN: Ofiles/baseTranslator.o Ofiles/main.o Ofiles/util.o Ofiles/macro_util.o Ofiles/inctraction.o Ofiles/first_run.o Ofiles/second_run.o
	gcc -g -ansi -Wall -pedantic Ofiles/macro_util.o Ofiles/inctraction.o Ofiles/first_run.o Ofiles/second_run.o Ofiles/main.o Ofiles/util.o Ofiles/baseTranslator.o -o Ofiles/MMN
Ofiles/main.o: main.c main.h
	gcc -g -c -ansi -Wall -pedantic main.c -o Ofiles/main.o
Ofiles/dataImage.o: dataImage.c dataImage.h
	gcc -g -c -ansi -Wall -pedantic dataImage.c -o Ofiles/dataImage.o
Ofiles/second_run.o: second_run.c second_run.h
	gcc -g -c -ansi -Wall -pedantic second_run.c -o Ofiles/second_run.o
Ofiles/first_run.o: first_run.c first_run.h
	gcc -g -c -ansi -Wall -pedantic first_run.c -o Ofiles/first_run.o
# Ofiles/pre_asmbler.o: pre_asmbler.c pre_asmbler.h
	# gcc -g -c -ansi -Wall -pedantic pre_asmbler.c -o Ofiles/pre_asmbler.o
Ofiles/util.o: util.c util.h
	gcc -g -c -ansi -Wall -pedantic util.c -o Ofiles/util.o
Ofiles/macro_util.o: macro_util.c macro_util.h
	gcc -g -c -ansi -Wall -pedantic macro_util.c -o Ofiles/macro_util.o
Ofiles/inctraction.o: inctraction.c inctraction.h
	gcc -g -c -ansi -Wall -pedantic inctraction.c -o Ofiles/inctraction.o
Ofiles/baseTranslator.o: baseTranslator.c baseTranslator.h
	gcc -g -c -ansi -Wall -pedantic baseTranslator.c -o Ofiles/baseTranslator.o