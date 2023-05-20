#!/bin/bash
#bash script to compile all the programs that will use an executable file
echo "compileALL"
for d in algorithms/*/;
do 
cd $d
echo "cd $d"
#echo ${d::-1};
if [[ -f "compile.sh" ]]; then
    echo "Compiling executables for $d."
    source compile.sh
fi
cd ../..
done;
