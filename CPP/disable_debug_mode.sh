#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/bool debug = true;/bool debug = false;/g' ${d::-1}.cpp;
cd ..;
done;