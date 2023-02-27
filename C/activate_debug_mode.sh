#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/int debug = 0;/int debug = 1;/g' ${d::-1}.c;
cd ..;
done;