#!/bin/bash
#bash script to compile all the programs that will use an executable file

for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ "${d::-1}" != "Swift" && "${d::-1}" != "Haskell" && "${d::-1}" != "bashScripts" ]]; then
    if [[ -f "activate_debug_mode.sh" ]]; then
        echo "Activating debug mode in $d."
        bash activate_debug_mode.sh
    fi
fi
cd ..;
done;