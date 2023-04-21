#!/bin/bash

for d in */;
do
cd $d
echo "Compiling ${d::-1}_100000.rs";
rustc ${d::-1}_100000.rs -O;
cd ..;
done;