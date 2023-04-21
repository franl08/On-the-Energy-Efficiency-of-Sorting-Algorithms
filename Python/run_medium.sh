#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d_100000 algorithm";
python3 ${d::-1}_100000.py
cd ..;
done;
