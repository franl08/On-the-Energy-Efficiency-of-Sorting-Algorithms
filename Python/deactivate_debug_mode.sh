#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/debug = False/debug = True/g' ${d::-1}.py;
cd ..;
done;