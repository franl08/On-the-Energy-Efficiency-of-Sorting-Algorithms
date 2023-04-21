#!/bin/bash
#bash script to compile all the programs that will use an executable file

for d in */;
do 
cd $d;
echo "cd $d";
if [[ "${d::-1}" == "Python" ]]; then
    if [[ -f "change_perms.sh" ]]; then
        echo "Changing perms to executable for $d."
        source change_perms.sh
    fi
fi
cd ..;
done;