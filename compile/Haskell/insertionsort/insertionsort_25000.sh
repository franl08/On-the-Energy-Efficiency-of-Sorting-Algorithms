#!/bin/bash

cd ../../../algorithms/Haskell/insertionsort
ghc -O2 --make insertionsort_25000.hs -threaded -rtsopts