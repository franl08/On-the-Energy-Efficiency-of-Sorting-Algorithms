#!/bin/bash
#bash script to remove executables in all the programs that have it

for d in */; do 
    cd "$d"
    echo "cd $d"
    #echo "${d::-1}"
    if [[ "${d::-1}" != "Swift" && "${d::-1}" != "Haskell" && "${d::-1}" != "bashScripts" ]]; then
        if [[ -f "rm.sh" ]]; then
            echo "Removing executables in $d."
            bash rm.sh
        fi
    fi
    cd ..
done
