#!/bin/bash
#Main script to run all the scripts necessary to obtain the results

# sudo apt-get install libsensors-dev -> NEEDED TO UBUNTU

source scripts/RAPL.sh

source scripts/disable_debug_modeALL.sh

source scripts/rmALL.sh

source scripts/define_n_elems_25000.sh

source scripts/change_perms.sh

source scripts/compile_small.sh

source scripts/define_n_elems_50000.sh

source scripts/rmALL.sh

source scripts/compile_medium.sh

source scripts/define_n_elems_100000.sh

source scripts/compile_large.sh