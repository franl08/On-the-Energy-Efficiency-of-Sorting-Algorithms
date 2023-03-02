#!/bin/bash
n_elems=$1

for d in */;
do 
cd $d;
sed -i "s/nElems = [0-9, ]*/nElems = $1/" ${d::-1}.hs;
cd ..;
done;