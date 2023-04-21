#!/bin/bash

for d in */;
do
rm $d${d::-1};
rm $d${d::-1}.hi;
rm $d${d::-1}.o;
done;

#!/bin/bash

for d in */;
do
cd $d
rm ${d::-1}_25000;
rm ${d::-1}_100000;
rm ${d::-1}_250000;
rm *.hi;
rm *.o;
rm -f *.J
cd ..;
done;