#!/bin/bash
#bash script to run make in the RAPL directory

cd RAPL;
if [[ -f "rapl.o" ]]; then
    make clean;
fi
make main;