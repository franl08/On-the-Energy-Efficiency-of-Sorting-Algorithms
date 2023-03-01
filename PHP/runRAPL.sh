#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "php ${d::-1}.php" 5 "PHP";
cd ..;
done;

