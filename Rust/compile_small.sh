#!/bin/bash

for d in */;
do
cd $d
echo "Compiling ${d::-1}_25000.rs";
rustc ${d::-1}_25000.rs -O;
cd ..;
done;