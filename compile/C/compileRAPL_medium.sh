#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d compiler :: with 50000 elements";
sudo ../../../RAPL/main "${d::-1}_50000.sh" 1 "C" $NUM_ELEMS;
cd ..;
done;

