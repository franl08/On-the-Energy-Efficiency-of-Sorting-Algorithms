#!/bin/bash

for d in */; do
  cd "$d"
  if [ -e "${d::-1}_25000.go" ]; then
    go build "${d::-1}_25000.go"
  fi
  if [ -e "${d::-1}_100000.go" ]; then
    go build "${d::-1}_100000.go"
  fi
  if [ -e "${d::-1}_250000.go" ]; then
    go build "${d::-1}_250000.go"
  fi
  cd ..
done
