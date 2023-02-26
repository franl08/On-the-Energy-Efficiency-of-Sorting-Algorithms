#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/let debug: bool = false;/let debug: bool = true;/g' ${d::-1}.rs;
cd ..;
done;