#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/let debug = true/let debug = false/g' ${d::-1}.go;
cd ..;
done;