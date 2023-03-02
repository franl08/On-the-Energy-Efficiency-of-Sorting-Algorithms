#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "perl ${d::-1}.pl" 5 "Perl" 10000;
cd ..;
done;

