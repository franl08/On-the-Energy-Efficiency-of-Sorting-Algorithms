#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/main = (print$ '${d::-1}' unsorted)/main = ('${d::-1}' unsorted) `seq` (return ())/g' ${d::-1}.hs;
cd ..;
done;