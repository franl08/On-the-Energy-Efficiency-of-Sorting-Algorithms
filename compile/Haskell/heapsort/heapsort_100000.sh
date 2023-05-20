#!/bin/bash

cd ../../../algorithms/Haskell/heapsort
ghc -O2 --make heapsort_100000.hs -threaded -rtsopts