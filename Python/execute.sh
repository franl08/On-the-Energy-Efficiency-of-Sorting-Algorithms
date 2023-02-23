#!/bin/bash

for d in */;
do 
cd $d;
python3 ${d::-1}.py;
cd ..;
done;