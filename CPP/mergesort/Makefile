SMALL=mergesort_25000
MEDIUM=mergesort_100000
LARGE=mergesort_250000


main : $(SMALL).cpp
	g++ -O2 -o $(SMALL) $(SMALL).cpp
	chmod 777 $(SMALL)

small : $(SMALL).cpp
	g++ -O2 -o $(SMALL) $(SMALL).cpp
	chmod 777 $(SMALL) 

medium : $(MEDIUM).cpp
	g++ -O2 -o $(MEDIUM) $(MEDIUM).cpp
	chmod 777 $(MEDIUM)

large : $(LARGE).cpp
	g++ -O2 -o $(LARGE) $(LARGE).cpp
	chmod 777 $(LARGE)

clean:
	rm -rf $(SMALL).o $(SMALL)
	rm -rf $(MEDIUM).o $(MEDIUM)
	rm -rf $(LARGE).o $(LARGE)
