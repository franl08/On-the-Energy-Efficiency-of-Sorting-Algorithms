#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "julia ${d::-1}.jl" 5 "Julia";
cd ..;
done;

