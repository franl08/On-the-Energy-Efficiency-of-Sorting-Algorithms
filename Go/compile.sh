#!/bin/bash

for d in */;
do 
cd $d;
go build ${d::-1}.go;
cd ..;
done;