#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/debug=0/debug=1/g' ${d::-1}.lua;
cd ..;
done;