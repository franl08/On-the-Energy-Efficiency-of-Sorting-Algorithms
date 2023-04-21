#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm :: with 250000 elements";
sudo ../../RAPL/main "${d::-1}_250000" 5 "Rust" $NUM_ELEMS;
cd ..;
done;

