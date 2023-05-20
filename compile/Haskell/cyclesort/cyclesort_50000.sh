#!/bin/bash

cd ../../../algorithms/Haskell/cyclesort
ghc -O2 --make cyclesort_50000.hs -threaded -rtsopts