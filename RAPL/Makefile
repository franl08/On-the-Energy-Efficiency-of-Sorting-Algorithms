

main : main.c rapl.o
	gcc -O2  -o main main.c rapl.o -lm -lsensors
	chmod 777 main

rapl.o : rapl.c rapl.h
	gcc -O2  -c rapl.c -lm -lsensors

clean:
	rm -rf main.o rapl.o