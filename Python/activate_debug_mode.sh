#!/bin/bash

for d in */;
do 
cd $d;
cd src/;
sed -i 's/debug = True/debug = False/g' ${d::-1}_25000.py;
sed -i 's/debug = True/debug = False/g' ${d::-1}_100000.py;
sed -i 's/debug = True/debug = False/g' ${d::-1}_250000.py;
cd ..;
cd ..;
done;