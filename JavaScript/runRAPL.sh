#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "node ${d::-1}.js" 5 "JavaScript" 10000;
cd ..;
done;

