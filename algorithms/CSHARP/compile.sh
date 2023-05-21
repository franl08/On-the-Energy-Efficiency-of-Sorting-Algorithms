#!/bin/bash

for d in */; do
  cd "$d/src/"
  if [ -e "${d::-1}_25000.cs" ]; then
    mcs -optimize+  "${d::-1}_25000.cs"
  fi
  if [ -e "${d::-1}_50000.cs" ]; then
    mcs -optimize+ "${d::-1}_50000.cs"
  fi
  if [ -e "${d::-1}_100000.cs" ]; then
    mcs -optimize+ "${d::-1}_100000.cs"
  fi
  cd ../..
done
