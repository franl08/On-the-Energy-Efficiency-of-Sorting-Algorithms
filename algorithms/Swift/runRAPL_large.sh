#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm :: with 100000 elements";
sudo ../../../RAPL/main "${d::-1}_100000" 5 "Swift" $NUM_ELEMS;
cd ..;
done;

