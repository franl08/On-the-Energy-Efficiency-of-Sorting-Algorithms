#!/bin/bash

cd ../../../algorithms/Haskell/quicksort
ghc -O2 --make quicksort_50000.hs -threaded -rtsopts