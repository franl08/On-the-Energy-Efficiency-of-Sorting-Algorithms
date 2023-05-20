#!/bin/bash
#bash script to run RAPL for all the programs

for d in algorithms/*/; do 
    cd "$d"
    echo "cd $d"
    #echo "${d::-1}"
    if [[ -f "runRAPL_large.sh" ]]; then
        echo "Running RAPL in $d."
        source runRAPL_large.sh
    fi
    cd ../..
done
