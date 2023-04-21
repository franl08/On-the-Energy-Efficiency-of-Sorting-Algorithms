#!/bin/bash

for d in */;
do 
cd $d;
sudo chmod +x ${d::-1}_*.sh;
cd ..;
done;
