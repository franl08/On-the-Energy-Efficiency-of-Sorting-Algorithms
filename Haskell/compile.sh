#!/bin/bash

for d in */; do
  cd "$d"
  if [ -e "${d::-1}_25000.hs" ]; then
    ghc "${d::-1}_25000.hs"
  fi
  if [ -e "${d::-1}_100000.hs" ]; then
    ghc "${d::-1}_100000.hs"
  fi
  if [ -e "${d::-1}_250000.hs" ]; then
    ghc "${d::-1}_250000.hs"
  fi
  cd ..
done
