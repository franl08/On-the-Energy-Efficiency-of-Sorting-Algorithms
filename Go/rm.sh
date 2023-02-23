#!/bin/bash

for d in */;
do 
cd $d;
rm ${d::-1};
cd ..;
done;