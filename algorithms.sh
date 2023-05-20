#!/bin/bash
#Main script to run all the scripts necessary to obtain the results

# sudo apt-get install libsensors-dev -> NEEDED TO UBUNTU

source scripts/RAPL.sh

source scripts/disable_debug_modeALL.sh

source scripts/rmALL.sh

source scripts/compileALL.sh

source scripts/define_n_elems_25000.sh

source scripts/runRAPL_small.sh

source scripts/joinRAPLoutputs_algorithms.sh

source scripts/rm_outs.sh

source scripts/define_n_elems_50000.sh

source scripts/runRAPL_medium.sh

source scripts/addRAPLoutputs_algorithms.sh

source scripts/rm_outs.sh

source scripts/define_n_elems_100000.sh

source scripts/runRAPL_large.sh

source scripts/addRAPLoutputs_algorithms.sh