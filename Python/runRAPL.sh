#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "${d::-1}.sh" 5 "Python" $NUM_ELEMS;
cd ..;
done;

