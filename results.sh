#!/bin/bash
#Principal script to run all the scripts necessary to obtain the results

bash bashScripts/RAPL.sh

bash bashScripts/disable_debug_modeALL.sh

bash bashScripts/rmALL.sh

bash bashScripts/compileALL.sh

bash bashScripts/runRAPL.sh

bash bashScripts/joinRAPLoutputs.sh
