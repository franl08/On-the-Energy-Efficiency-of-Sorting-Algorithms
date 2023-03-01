#!/bin/bash

for d in ../*/;
do 
cd $d;
echo "cd $d";
bash compile.sh;
cd ..;
done;