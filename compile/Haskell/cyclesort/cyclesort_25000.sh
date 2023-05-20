#!/bin/bash

cd ../../../algorithms/Haskell/cyclesort
ghc -O2 --make cyclesort_25000.hs -threaded -rtsopts