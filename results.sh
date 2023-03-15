#!/bin/bash
#Main script to run all the scripts necessary to obtain the results

bash bashScripts/RAPL.sh

bash bashScripts/disable_debug_modeALL.sh

bash bashScripts/rmALL.sh

bash bashScripts/define_n_elems_25000.sh

bash bashScripts/compileALL.sh

bash bashScripts/runRAPL.sh

bash bashScripts/joinRAPLoutputs.sh

#bash bashScripts/rmALL.sh

#bash bashScripts/define_n_elems_250000.sh

#bash bashScripts/compileALL.sh

#bash bashScripts/runRAPL.sh

#bash bashScripts/addRAPLoutputs.sh

#bash bashScripts/rmALL.sh

#bash bashScripts/define_n_elems_1000000.sh

#bash bashScripts/compileALL.sh

#bash bashScripts/runRAPL.sh

#bash bashScripts/addRAPLoutputs.sh
