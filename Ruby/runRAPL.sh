#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "ruby ${d::-1}.rb" 5 "Ruby";
cd ..;
done;

