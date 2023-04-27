#!/bin/bash
#bash script to run RAPL for all the programs

for d in */; do 
    cd "$d"
    echo "cd $d"
    #echo "${d::-1}"
    if [[ "${d::-1}" == "C" || "${d::-1}" == "CPP" || "${d::-1}" == "CSHARP" || "${d::-1}" == "Go" || "${d::-1}" == "Haskell" || ${d::-1} == "Rust" || "${d::-1}" == "Swift" ]]; then
        if [[ -f "runRAPL_large.sh" ]]; then
            echo "Running RAPL in $d."
            source runRAPL_large.sh
        fi
    fi
    cd ..
done
