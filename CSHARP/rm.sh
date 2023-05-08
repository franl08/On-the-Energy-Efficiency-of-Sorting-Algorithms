#!/bin/bash


for d in */;
do 
cd $d;
cd src/; 
rm *.exe
rm -f *.J
cd ..
cd ..
done