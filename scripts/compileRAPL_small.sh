#!/bin/bash

for d in compile/*/; do 
    cd "$d"
    echo "cd $d"
    chmod a+x *.
    if [[ -f "compileRAPL_small.sh" ]]; then
        echo "Running RAPL in $d."
        source compileRAPL_small.sh
    fi
    cd ../..
done