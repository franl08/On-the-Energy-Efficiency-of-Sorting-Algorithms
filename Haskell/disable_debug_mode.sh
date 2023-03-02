#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/main = (print$ '${d::-1}' selectInput nElems)/main = ('${d::-1}' (selectInput nElems)) `seq` (return ())/g' ${d::-1}.hs;
cd ..;
done;