#!/bin/bash
#bash script to define array size to 1000000 in all the programs that have it

export NUM_ELEMS=1000000
for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ -f "define_n_elems.sh" ]]; then
    echo "Defining 250000 elements in $d."
    bash define_n_elems.sh 1000000
fi
cd ..;
done;