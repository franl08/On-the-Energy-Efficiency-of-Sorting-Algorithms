#!/bin/bash
#bash script to remove executables in all the programs that have it

for d in */; do 
    cd "$d"
    echo "cd $d"
    #echo "${d::-1}"
    if [[ "${d::-1}" != "Swift" && "${d::-1}" != "Haskell" && "${d::-1}" != "bashScripts" && "${d::-1}" != "JavaScript" && "${d::-1}" != "Julia"  && "${d::-1}" != "Lua" && "${d::-1}" != "Perl" && "${d::-1}" != "PHP" && "${d::-1}" != "Python" && "${d::-1}" != "Ruby" && "${d::-1}" != "CSHARP" ]]; then
        if [[ -f "rm.sh" ]]; then
            echo "Removing executables in $d."
            source rm.sh
        fi
    fi
    cd ..
done
