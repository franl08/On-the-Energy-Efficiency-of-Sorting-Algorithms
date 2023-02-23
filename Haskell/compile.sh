#!/bin/bash

for d in */;
do
ghc -O2 --make $d${d::-1}.hs -threaded -rtsopts;
chmod 777 $d${d::-1};
done;