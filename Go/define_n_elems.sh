#!/bin/bash
n_elems=$1

for d in */;
do 
cd $d;
sed -i "s/n_elems := [0-9, ]*/n_elems := $1/" ${d::-1}.go;
cd ..;
done;