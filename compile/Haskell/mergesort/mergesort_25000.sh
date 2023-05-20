#!/bin/bash

cd ../../../algorithms/Haskell/mergesort
ghc -O2 --make mergesort_25000.hs -threaded -rtsopts