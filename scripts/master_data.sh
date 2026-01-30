###Run analysis
#!/bin/bash

##Ensure correct directory
cd ~/repo/rhds/scripts

##Ensure the filepaths are being read in accordingly
source config.env

##For analysis run the scripts in order:

##1. Run extract-data.r
Rscript extract-data.r ${datadir} ${resultsdir}

##2. Run clean-clinical.r 
Rscript clean-clinical.r ${datadir} ${resultsdir}

##3. Run predict-proteins.r
Rscript predict-proteins.r ${datadir} ${resultsdir}

##4. Run combine.r
Rscript combine.r ${datadir} ${resultsdir}

##5. Run analysis.r
Rscript analysis.r ${datadir} ${resultsdir}