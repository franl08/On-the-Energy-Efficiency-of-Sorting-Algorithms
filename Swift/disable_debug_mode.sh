#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/var debug = true/var debug = false/g' ${d::-1}.swift;
cd ..;
done;