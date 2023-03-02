#!/bin/bash
n_elems=$1

for d in */;
do 
cd $d;
sed -i "s/int n_elems = [0-9, ]*;/int n_elems = $1;/" ${d::-1}.cpp;
cd ..;
done;