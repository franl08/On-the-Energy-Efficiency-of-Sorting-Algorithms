#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/debug := false/debug := true/g' ${d::-1}_25000.go;
sed -i 's/debug := false/debug := true/g' ${d::-1}_50000.go;
sed -i 's/debug := false/debug := true/g' ${d::-1}_100000.go;
cd ..;
done;