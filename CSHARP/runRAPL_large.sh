#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm :: with 250000 elements";
sudo ../../RAPL/main "${d::-1}_250000.exe" 5 "C#" $NUM_ELEMS;
cd ..;
done;

