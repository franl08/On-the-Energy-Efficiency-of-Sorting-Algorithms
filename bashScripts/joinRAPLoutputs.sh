#!/bin/bash
# bash script to join all the RAPL outputs(.J) into one single file

# use a variable for the output file path to avoid duplication
output_file="results/results.csv"

# remove the output file if it exists
if [[ -f "$output_file" ]]; then
    rm "$output_file"
    echo "$output_file deleted"
fi

# create the output file and add the header row
touch "$output_file"
echo "Language , Program , Input Size , Package , Core(s) , GPU , DRAM? , Time (sec)" >> "$output_file"

# loop through each directory in the current directory
for d in */; do 
    # move into the directory
    if [[ "${d::-1}" == "C" || "${d::-1}" == "CPP" || "${d::-1}" == "CSHARP" || "${d::-1}" == "Go" || "${d::-1}" == "Haskell" || "${d::-1}" == "Python" || "${d::-1}" == "Rust" || "${d::-1}" == "Swift" ]]; then
        cd "$d"
        echo "cd $d"
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
                    tail -n +2 "${alg::-1}_${size}.J" >> "../../$output_file"
                fi
                if [[ -f "${alg::-1}_${size}.sh.J" ]]; then
                    # append data from the output file starting from the second line (to exclude the header row)
                    echo "Joining ${alg::-1}_${size}.sh.J"
                    tail -n +2 "${alg::-1}_${size}.sh.J" >> "../../$output_file"
                fi
            done
            # move back up to the parent directory
            cd ..
        done
            # move back up to the grandparent directory
        cd ..
    fi
done


