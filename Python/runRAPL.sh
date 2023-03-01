#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "python3 ${d::-1}.py" 5 "Python";
cd ..;
done;

