#!/bin/bash
#bash script to run RAPL for all the programs

for d in */; do 
    cd "$d"
    echo "cd $d"
    #echo "${d::-1}"
    if [[ "${d::-1}" != "Swift" && "${d::-1}" != "Haskell" && "${d::-1}" != "bashScripts" ]]; then
        if [[ -f "runRAPL.sh" ]]; then
            echo "Runing RAPL in $d.";
            bash runRAPL.sh
        fi
    fi
    cd ..
done

