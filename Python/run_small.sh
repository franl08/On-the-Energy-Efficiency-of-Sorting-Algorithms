#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d_25000 algorithm";
python3 ${d::-1}_25000.py
cd ..;
done;
