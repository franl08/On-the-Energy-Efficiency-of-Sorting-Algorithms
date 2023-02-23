#!/bin/bash

for d in */;
do
cd $d
rustc ${d::-1}.rs -O;
cd ..;
done;