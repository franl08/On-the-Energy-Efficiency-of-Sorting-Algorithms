#!/bin/bash
#Main script to run all the scripts necessary to obtain the results

# sudo apt-get install libsensors-dev -> NEEDED TO UBUNTU

source bashScripts/RAPL.sh

source bashScripts/disable_debug_modeALL.sh

source bashScripts/rmALL.sh

source bashScripts/compileALL.sh

source bashScripts/change_perms_all.sh

source bashScripts/define_n_elems_25000.sh

source bashScripts/runRAPL_small.sh

source bashScripts/joinRAPLoutputs.sh

source bashScripts/rm_outs.sh

source bashScripts/define_n_elems_50000.sh

source bashScripts/runRAPL_medium.sh

source bashScripts/addRAPLoutputs.sh

source bashScripts/rm_outs.sh

source bashScripts/define_n_elems_100000.sh

source bashScripts/runRAPL_large.sh

source bashScripts/addRAPLoutputs.sh

