#!/bin/bash
#bash script to join all the RAPL outputs(.J) into one single file

if [[ -f "results/results.csv" ]]; then
    rm results/results.csv;
    echo "results/results.csv deleted"
fi
touch results/results.csv;
echo "Language, Program, Input Size ,Package , Core(s) , GPU , DRAM? , Time (sec)" >> results/results.csv;
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
