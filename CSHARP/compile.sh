#!/bin/bash

for d in */; do
  cd "$d"
  if [ -e "${d::-1}_25000.cs" ]; then
    mcs "${d::-1}_25000.cs"
  fi
  if [ -e "${d::-1}_100000.cs" ]; then
    mcs "${d::-1}_100000.cs"
  fi
  if [ -e "${d::-1}_250000.cs" ]; then
    mcs "${d::-1}_250000.cs"
  fi
  cd ..
done
