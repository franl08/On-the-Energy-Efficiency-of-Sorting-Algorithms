#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/main = (print$ '${d::-1}' selectInput nElems)/g' ${d::-1}_25000.hs;
sed -i 's/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/main = (print$ '${d::-1}' selectInput nElems)/g' ${d::-1}_50000.hs;
sed -i 's/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/main = (print$ '${d::-1}' selectInput nElems)/g' ${d::-1}_100000.hs;
cd ..;
done;