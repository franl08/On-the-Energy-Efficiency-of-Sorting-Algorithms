#!/bin/bash

dir_to_process="."

for dir in "$dir_to_process"/*/; do
  cd "$dir"
  php *.php
  cd ".."
done