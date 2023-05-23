#!/bin/bash
#bash script to remove executables in all the programs that have it

for d in compile/*/; do 
    cd "$d"
    echo "cd $d"
    #echo "${d::-1}"
    if [[ -f "rm.sh" ]]; then
        echo "Removing executables in $d."
        source rm.sh
    fi
    cd ../..
done
