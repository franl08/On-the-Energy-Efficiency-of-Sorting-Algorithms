#!/bin/bash
n_elems=$1

for d in */;
do 
cd $d;
sed -i "s/let n_elems = [0-9, ]*;/let n_elems := $1;/" ${d::-1}.rs;
cd ..;
done;