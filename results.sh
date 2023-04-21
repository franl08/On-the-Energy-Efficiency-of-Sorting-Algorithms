#!/bin/bash
#Main script to run all the scripts necessary to obtain the results

source bashScripts/RAPL.sh

source bashScripts/disable_debug_modeALL.sh

source bashScripts/rmALL.sh

source bashScripts/compileALL.sh

source bashScripts/define_n_elems_25000.sh

source bashScripts/runRAPL_small.sh

source bashScripts/joinRAPLoutputs.sh

#source bashScripts/rmALL.sh

#source bashScripts/define_n_elems_100000.sh

#source bashScripts/compileALL.sh

#source bashScripts/runRAPL.sh

#source bashScripts/addRAPLoutputs.sh


#source bashScripts/rmALL.sh

#source bashScripts/define_n_elems_250000.sh

#source bashScripts/compileALL.sh

#source bashScripts/runRAPL.sh

#source bashScripts/addRAPLoutputs.sh

