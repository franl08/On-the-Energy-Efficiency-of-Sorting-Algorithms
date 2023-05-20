#!/bin/bash

cd ../../../algorithms/Haskell/cyclesort
ghc -O2 --make cyclesort_100000.hs -threaded -rtsopts