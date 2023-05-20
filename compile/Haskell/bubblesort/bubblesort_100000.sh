#!/bin/bash

cd ../../../algorithms/Haskell/bubblesort
ghc -O2 --make bubblesort_100000.hs -threaded -rtsopts