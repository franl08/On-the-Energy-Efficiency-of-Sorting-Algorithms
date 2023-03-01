#!/bin/bash

for d in */;
do 
cd $d;
node ${d::-1}.js;
cd ..;
done;