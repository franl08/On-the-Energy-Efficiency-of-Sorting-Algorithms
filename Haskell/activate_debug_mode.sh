#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/main = ('${d::-1}' unsorted) `seq` (return ())/main = (print$ '${d::-1}' unsorted)/g' ${d::-1}.hs;
cd ..;
done;