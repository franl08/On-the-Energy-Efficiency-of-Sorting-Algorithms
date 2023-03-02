#!/bin/bash
#bash script to add more RAPL outputs(.J) into the result file

for d in */; do 
    cd "$d"
    echo "cd $d"
    for alg in */; do
        echo "cd $alg"
        if [[ -f "$alg${alg::-1}.J" ]]; then
            echo "Joining ${alg::-1}.J"
            tail -n +2 "$alg${alg::-1}.J" >> ../results/results.csv
        fi
    done
    cd ..
done