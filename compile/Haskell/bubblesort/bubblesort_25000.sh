#!/bin/bash

cd ../../../algorithms/Haskell/bubblesort
ghc -O2 --make bubblesort_25000.hs -threaded -rtsopts
