#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/int debug = 1;/int debug = 0;/g' ${d::-1}_25000.c;
sed -i 's/int debug = 1;/int debug = 0;/g' ${d::-1}_100000.c;
sed -i 's/int debug = 1;/int debug = 0;/g' ${d::-1}_250000.c;
cd ..;
done;