#!/bin/bash

dir_to_process="."

for dir in "$dir_to_process"/*/; do
  cd "$dir/src"
  echo "Running $dir"
  mono *.exe
  cd "../.."
done


