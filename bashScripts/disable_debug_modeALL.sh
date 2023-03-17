#!/bin/bash
#bash script to disable debug mode in all the programs that have it

for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ -f "disable_debug_mode.sh" ]]; then
    echo "Disabling debug mode in $d."
    source disable_debug_mode.sh
fi
cd ..;
done;