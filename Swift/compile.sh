#!/bin/bash

for d in */;
do 
cd $d;
swiftc ${d::-1}.swift;
cd ..;
done;