#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "/usr/bin/python3 ${d::-1}.py" 5 "Python" $NUM_ELEMS;
cd ..;
done;

