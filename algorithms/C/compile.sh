#!/bin/bash

for d in */;
do 
cd $d;
make small;
make medium;
make large;
cd ..;
done;