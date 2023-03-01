#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/let debug = false/let debug = true/g' ${d::-1}.swift;
cd ..;
done;