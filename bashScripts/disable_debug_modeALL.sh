#!/bin/bash
#bash script to compile all the programs that will use an executable file

for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ "${d::-1}" != "Swift" && "${d::-1}" != "Haskell" && "${d::-1}" != "bashScripts" ]]; then
    if [[ -f "disable_debug_mode.sh" ]]; then
        echo "Disabling debug mode in $d."
        bash disable_debug_mode.sh
    fi
fi
cd ..;
done;