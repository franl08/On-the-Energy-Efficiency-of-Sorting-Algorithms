#!/bin/bash

for d in */;
do
cd $d
# rm ${d::-1}_25000;
# rm ${d::-1}_100000;
# rm ${d::-1}_250000;
# rm *.hi;
# rm *.o;
rm -f *.J
cd ..;
done;