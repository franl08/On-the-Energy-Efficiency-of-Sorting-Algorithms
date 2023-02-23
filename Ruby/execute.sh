#!/bin/bash

for d in */;
do 
cd $d;
ruby ${d::-1}.rb;
cd ..;
done;