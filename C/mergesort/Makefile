SMALL=mergesort_25000
MEDIUM=mergesort_100000
LARGE=mergesort_250000

main : $(SMALL).c
	gcc -O2 -o $(SMALL) $(SMALL).c
	chmod 777 $(SMALL)

small : $(SMALL).c
	gcc -O2 -o $(SMALL) $(SMALL).c
	chmod 777 $(SMALL)

medium : $(MEDIUM).c
	gcc -O2 -o $(MEDIUM) $(MEDIUM).c
	chmod 777 $(MEDIUM)

large : $(LARGE).c
	gcc -O2 -o $(LARGE) $(LARGE).c
	chmod 777 $(LARGE)

clean:
	rm -rf $(SMALL).o $(SMALL)
	rm -rf $(MEDIUM).o $(MEDIUM)
	rm -rf $(LARGE).o $(LARGE)