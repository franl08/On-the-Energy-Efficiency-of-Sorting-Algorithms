#!/bin/bash

dir_to_process="."

for dir in "$dir_to_process"/*/; do
  cd "$dir/src"
  sed -i 's/public static bool debug = true;/public static bool debug = false;/g' *.cs;
  cd ../..
done
