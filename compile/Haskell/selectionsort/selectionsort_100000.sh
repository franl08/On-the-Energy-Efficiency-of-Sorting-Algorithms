#!/bin/bash

cd ../../../algorithms/Haskell/selectionsort
ghc -O2 --make selectionsort_100000.hs -threaded -rtsopts