#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/bool debug = true;/bool debug = false;/g' ${d::-1}_25000.cpp;
sed -i 's/bool debug = true;/bool debug = false;/g' ${d::-1}_100000.cpp;
sed -i 's/bool debug = true;/bool debug = false;/g' ${d::-1}_250000.cpp;
cd ..;
done;