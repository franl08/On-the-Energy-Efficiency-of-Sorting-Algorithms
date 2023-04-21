#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm :: with 250000 elements";
sudo ../../RAPL/main "" 5 "Python" $NUM_ELEMS;
cd ..;
done;

