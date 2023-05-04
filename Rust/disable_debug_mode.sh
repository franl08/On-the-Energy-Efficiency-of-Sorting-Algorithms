#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/let debug: bool = true;/let debug: bool = false;/g' ${d::-1}_25000.rs;
sed -i 's/let debug: bool = true;/let debug: bool = false;/g' ${d::-1}_50000.rs;
sed -i 's/let debug: bool = true;/let debug: bool = false;/g' ${d::-1}_100000.rs;
cd ..;
done;