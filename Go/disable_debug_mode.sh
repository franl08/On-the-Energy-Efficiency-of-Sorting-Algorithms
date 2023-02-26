#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/debug := true/debug := false/g' ${d::-1}.go;
cd ..;
done;