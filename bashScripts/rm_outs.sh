#!/bin/bash
#bash script to remove executables in all the programs that have it

for d in */; do 
    cd "$d"
    echo "cd $d"
    if [[ "${d::-1}" != "bashScripts"  ]]; then
        if [[ -f "rm_out.sh" ]]; then
            echo "Removing executables in $d."
            source rm_out.sh
        fi
    fi
    cd ..
done