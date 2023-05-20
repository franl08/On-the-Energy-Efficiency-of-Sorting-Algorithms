#!/bin/bash

cd ../../../algorithms/Haskell/selectionsort
ghc -O2 --make selectionsort_50000.hs -threaded -rtsopts