#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/bool debug = false;/bool debug = true;/g' ${d::-1}_25000.cpp;
sed -i 's/bool debug = false;/bool debug = true;/g' ${d::-1}_50000.cpp;
sed -i 's/bool debug = false;/bool debug = true;/g' ${d::-1}_100000.cpp;
cd ..;
done;
