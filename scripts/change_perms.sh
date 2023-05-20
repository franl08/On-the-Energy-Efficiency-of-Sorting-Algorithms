#!/bin/bash

for d in compile/*/; do 
    cd "$d"
    echo "cd $d"
    source change_perms.sh
    cd ../..
done