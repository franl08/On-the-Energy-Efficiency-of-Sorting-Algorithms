#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/debug := true/debug := false/g' ${d::-1}_25000.go;
sed -i 's/debug := true/debug := false/g' ${d::-1}_100000.go;
sed -i 's/debug := true/debug := false/g' ${d::-1}_250000.go;
cd ..;
done;