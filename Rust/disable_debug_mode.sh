#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/let debug: bool = true;/let debug: bool = false;/g' ${d::-1}.rs;
cd ..;
done;