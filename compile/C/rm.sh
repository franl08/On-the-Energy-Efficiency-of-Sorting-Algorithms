#!/bin/bash

for d in */;
do 
cd $d;
rm -f *.J;
cd ..;
done;