#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "${d::-1}" 5 "C" 10000;
cd ..;
done;

