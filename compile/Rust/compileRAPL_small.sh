#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d compiler :: with 25000 elements";
sudo ../../../RAPL/main "${d::-1}_25000.sh" 1 "Rust" $NUM_ELEMS;
cd ..;
done;

