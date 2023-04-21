#!/bin/bash

for d in */;
do 
cd $d/src/;
sed -i 's/debug = True/debug = False/g' ${d::-1}.py;
cd ..;
done;