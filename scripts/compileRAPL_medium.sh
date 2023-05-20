#!/bin/bash

for d in compile/*/; do 
    cd "$d"
    echo "cd $d"
    if [[ -f "compileRAPL_medium.sh" ]]; then
        echo "Running RAPL in $d."
        source compileRAPL_medium.sh
    fi
    cd ../..
done