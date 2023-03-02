#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/main = (print$ '${d::-1}' selectInput nElems)/g' ${d::-1}.hs;
cd ..;
done;