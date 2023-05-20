#!/bin/bash

for d in compile/*/; do 
    cd "$d"
    echo "cd $d"
    if [[ -f "compileRAPL_large.sh" ]]; then
        echo "Running RAPL in $d."
        source compileRAPL_large.sh
    fi
    cd ../..
done