#!/bin/bash

for d in */;
do 
cd $d;
/usr/bin/python3 ${d::-1}.py;
cd ..;
done;