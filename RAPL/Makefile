CC := gcc
CFLAGS := -O2
LDFLAGS := -lm -lsensors $(shell pkg-config --libs --static raplcap-powercap) $(shell pkg-config --cflags raplcap-powercap)

main: main.c rapl.o
	$(CC) $(CFLAGS) -o main main.c rapl.o $(LDFLAGS)

rapl.o: rapl.c rapl.h
	$(CC) $(CFLAGS) -c rapl.c -lm -lsensors

clean:
	rm -rf main rapl.o
