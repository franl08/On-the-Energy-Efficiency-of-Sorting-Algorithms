#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/debug=1/debug=0/g' ${d::-1}.lua;
cd ..;
done;