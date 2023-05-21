#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/int debug = 0;/int debug = 1;/g' ${d::-1}_25000.c;
sed -i 's/int debug = 0;/int debug = 1;/g' ${d::-1}_50000.c;
sed -i 's/int debug = 0;/int debug = 1;/g' ${d::-1}_100000.c;
cd ..;
done;