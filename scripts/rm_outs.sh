#!/bin/bash
#bash script to remove executables in all the programs that have it

for d in algorithms/*/; do 
    cd "$d"
    echo "cd $d"
    if [[ -f "rm_out.sh" ]]; then
        echo "Removing executables in $d."
        source rm_out.sh
    fi
    cd ../..
done