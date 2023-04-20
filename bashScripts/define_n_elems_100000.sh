#!/bin/bash
#bash script to define array size to 100000 in all the programs that have it

export NUM_ELEMS="100000"
for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ -f "define_n_elems.sh" ]]; then
    echo "Defining 100000 elements in $d."
    source define_n_elems.sh 100000
fi
cd ..;
done;