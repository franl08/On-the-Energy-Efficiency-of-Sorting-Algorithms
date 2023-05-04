#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/var debug = false/var debug = true/g' ${d::-1}_25000.swift;
sed -i 's/var debug = false/var debug = true/g' ${d::-1}_50000.swift;
sed -i 's/var debug = false/var debug = true/g' ${d::-1}_100000.swift;
cd ..;
done;