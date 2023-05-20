#!/bin/bash

for d in */; do
  cd "$d"
  if [ -e "${d::-1}_25000.rs" ]; then
    rustc -C opt-level=2 ${d::-1}_25000.rs;
  fi
  if [ -e "${d::-1}_50000.rs" ]; then
    rustc -C opt-level=2 ${d::-1}_50000.rs;
  fi
  if [ -e "${d::-1}_100000.rs" ]; then
    rustc -C opt-level=2 ${d::-1}_100000.rs;
  fi
  cd ..
done