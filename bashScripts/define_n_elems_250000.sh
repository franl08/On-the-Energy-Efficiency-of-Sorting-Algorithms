#!/bin/bash
#bash script to define array size to 250000 in all the programs that have it

export NUM_ELEMS="250000"
for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ -f "define_n_elems.sh" ]]; then
    echo "Defining 250000 elements in $d."
    source define_n_elems.sh 250000
fi
cd ..;
done;