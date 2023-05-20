#!/bin/bash
# bash script to add more RAPL outputs(.J) into the result file

# use a variable for the output file path to avoid duplication
output_file="results/algorithms.csv"

# loop through each directory in the current directory
for d in algorithms/*/; do 
    # move into the directory
        cd "algorithms/$d"
        echo "cd algorithms/$d"
        # loop through each algorithm directory in the current directory
        for alg in */; do
            # move into the algorithm directory
            cd "$alg"
            echo "cd $alg"
            # loop through each input size output file and append the data to the output file
            for size in 25000 50000 100000; do
                if [[ -f "${alg::-1}_${size}.J" ]]; then
                    # append data from the output file starting from the second line (to exclude the header row)
                    echo "Joining ${alg::-1}_${size}.J"
                    tail -n +2 "${alg::-1}_${size}.J" >> "../../../$output_file"
                fi
                if [[ -f "${alg::-1}_${size}.sh.J" ]]; then
                    # append data from the output file starting from the second line (to exclude the header row)
                    echo "Joining ${alg::-1}_${size}.sh.J"
                    tail -n +2 "${alg::-1}_${size}.sh.J" >> "../../../$output_file"
                fi
            done
            # move back up to the parent directory
            cd ..
        done
        # move back up to the grandparent directory
        cd ../..
done