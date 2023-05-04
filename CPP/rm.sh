#!/bin/bash

for d in */;
do 
cd $d;
make clean;
rm -f *.J;
cd ..;
done;