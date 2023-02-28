#!/bin/bash

for d in */;
do 
cd $d;
echo "cd $d"
echo ${d::-1}
lua ${d::-1}.lua;
cd ..;
done;