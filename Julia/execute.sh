#!/bin/bash

dir_to_process="."

for dir in "$dir_to_process"/*/; do
  cd "$dir"
  julia *.jl
  cd ".."
done