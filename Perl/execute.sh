#!/bin/bash

for d in */;
do 
cd $d;
echo "cd $d"
perl ${d::-1}.pl;
cd ..;
done;