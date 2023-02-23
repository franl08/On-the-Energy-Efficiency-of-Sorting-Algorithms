#!/bin/bash

for d in */;
do
rm $d${d::-1};
rm $d${d::-1}.hi;
rm $d${d::-1}.o;
done;