#!/bin/bash

for d in */;
do 
cd $d;
sed -i 's/$debug = false;/$debug = true;/g' ${d::-1}.php;
cd ..;
done;