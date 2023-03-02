#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "${d::-1}.exe" 5 "C#" 10000;
cd ..;
done;

