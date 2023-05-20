#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/main = (print$ '${d::-1}' selectInput nElems)/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/g' ${d::-1}_25000.hs;
sed -i 's/main = (print$ '${d::-1}' selectInput nElems)/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/g' ${d::-1}_50000.hs;
sed -i 's/main = (print$ '${d::-1}' selectInput nElems)/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/g' ${d::-1}_100000.hs;
cd ..;
done;