#!/bin/bash
#bash script to run RAPL for all the programs

for d in */; do 
    cd "$d"
    echo "cd $d"
    #echo "${d::-1}"
    if [[ "${d::-1}" != "Swift" && "${d::-1}" != "Haskell" && "${d::-1}" != "bashScripts" && "${d::-1}" != "JavaScript" && "${d::-1}" != "Julia"  && "${d::-1}" != "Lua" && "${d::-1}" != "Perl" && "${d::-1}" != "PHP" && "${d::-1}" != "Python" && "${d::-1}" != "Ruby" && "${d::-1}" != "CSHARP" && "${d::-1}" != "Rust" ]]; then
        if [[ -f "runRAPL.sh" ]]; then
            echo "Running RAPL in $d."
            bash runRAPL.sh
        fi
    fi
    cd ..
done
