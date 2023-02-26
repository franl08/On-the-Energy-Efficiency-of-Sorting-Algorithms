#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/bool debug = false;/bool debug = true;/g' ${d::-1}.cpp;
cd ..;
done;