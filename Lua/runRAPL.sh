#!/bin/bash

for d in */;
do 
cd $d;
echo "Running RAPL for $d algorithm";
sudo ../../RAPL/main "lua ${d::-1}.lua" 5 "Lua";
cd ..;
done;

