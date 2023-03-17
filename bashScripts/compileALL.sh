#!/bin/bash
#bash script to compile all the programs that will use an executable file

for d in */;
do 
cd $d;
echo "cd $d";
#echo ${d::-1};
if [[ "${d::-1}" != "bashScripts" && "${d::-1}" != "JavaScript" && "${d::-1}" != "Julia"  && "${d::-1}" != "Lua" && "${d::-1}" != "Perl" && "${d::-1}" != "PHP" && "${d::-1}" != "Python" && "${d::-1}" != "Ruby" && "${d::-1}" != "CSHARP" ]]; then
    if [[ -f "compile.sh" ]]; then
        echo "Compiling executables for $d."
        source compile.sh
    fi
fi
cd ..;
done;
