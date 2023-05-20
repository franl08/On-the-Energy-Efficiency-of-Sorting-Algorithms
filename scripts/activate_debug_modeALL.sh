#!/bin/bash
#bash script to activate debug mode in all the programs that have it

for d in algorithms/*
do 
cd $d
echo "cd $d"
#echo ${d::-1};
if [[ -f "activate_debug_mode.sh" ]]; then
    echo "Activating debug mode in $d."
    source activate_debug_mode.sh
fi
cd ../..
done