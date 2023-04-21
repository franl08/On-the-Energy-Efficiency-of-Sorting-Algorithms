#!/bin/bash
#bash script to compile all the programs that will use an executable file

for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ "${d::-1}" == "Swift" ]]; then
    if [[ -f "compile.sh" ]]; then
        echo "Compiling executables for $d."
        source compile.sh
    fi
fi
cd ..;
done;
