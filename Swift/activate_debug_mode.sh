#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/var debug = false/var debug = true/g' ${d::-1}.swift;
cd ..;
done;