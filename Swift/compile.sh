#!/bin/bash

for d in */; do
  cd "$d"
  if [ -e "${d::-1}_25000.swift" ]; then
    swiftc "${d::-1}_25000.swift"
  fi
  if [ -e "${d::-1}_50000.swift" ]; then
    swiftc "${d::-1}_50000.swift"
  fi
  if [ -e "${d::-1}_100000.swift" ]; then
    swiftc "${d::-1}_100000.swift"
  fi
  cd ..
done
