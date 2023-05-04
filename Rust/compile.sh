#!/bin/bash

for d in */; do
  cd "$d"
  if [ -e "${d::-1}_25000.rs" ]; then
    rustc ${d::-1}_25000.rs -O;
  fi
  if [ -e "${d::-1}_50000.rs" ]; then
    rustc ${d::-1}_50000.rs -O;
  fi
  if [ -e "${d::-1}_100000.rs" ]; then
    rustc ${d::-1}_100000.rs -O;
  fi
  cd ..
done