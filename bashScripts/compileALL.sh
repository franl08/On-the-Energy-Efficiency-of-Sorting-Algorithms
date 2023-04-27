#!/bin/bash
#bash script to compile all the programs that will use an executable file

for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ "${d::-1}" == "C" || "${d::-1}" == "CPP" || "${d::-1}" == "CSHARP" || "${d::-1}" == "Go" || "${d::-1}" == "Haskell" || ${d::-1} == "Rust" || "${d::-1}" == "Swift" ]]; then
    if [[ -f "compile.sh" ]]; then
        echo "Compiling executables for $d."
        source compile.sh
    fi
fi
cd ..;
done;
