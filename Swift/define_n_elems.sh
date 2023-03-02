#!/bin/bash
n_elems=$1

for d in */;
do 
cd $d;
sed -i "s/var n_elems = [0-9, ]*/var n_elems = $1/" ${d::-1}.swift;
cd ..;
done;