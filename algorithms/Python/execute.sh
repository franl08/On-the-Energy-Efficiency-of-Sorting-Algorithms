#!/bin/bash

for d in */;
do 
cd $d;
bash ${d::-1}.sh;
cd ..;
done;