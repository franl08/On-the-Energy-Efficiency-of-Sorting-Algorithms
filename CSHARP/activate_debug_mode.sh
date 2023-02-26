#!/bin/bash

dir_to_process="."

for dir in "$dir_to_process"/*/; do
  cd "$dir"
  sed -i 's/public static bool debug = false;/public static bool debug = true;/g' *.cs;
  cd ".."
done
