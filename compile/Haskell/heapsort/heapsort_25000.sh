#!/bin/bash

cd ../../../algorithms/Haskell/heapsort
ghc -O2 --make heapsort_25000.hs -threaded -rtsopts