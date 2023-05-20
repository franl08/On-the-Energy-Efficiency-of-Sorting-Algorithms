#!/bin/bash

cd ../../../algorithms/Haskell/bubblesort
ghc -O2 --make bubblesort_50000.hs -threaded -rtsopts