#!/bin/bash

for d in */; do
  cd "$d"
  if [ -e "${d::-1}_25000" ]; then
    rm "${d::-1}_25000"
    rm -f "${d::-1}_25000.J"
  fi
  if [ -e "${d::-1}_100000" ]; then
    rm "${d::-1}_100000"
    rm -f "${d::-1}_100000.J"
  fi
  if [ -e "${d::-1}_250000" ]; then
    rm "${d::-1}_250000"
    rm -f "${d::-1}_250000.J"
  fi
  rm *.J 2>/dev/null  # suppress error messages from rm
  cd ..
done
