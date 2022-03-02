#!/bin/bash -euo pipefail
# cp /work/users/chenjun/Works/DYQ/meRIP_DYQ_control-treat-m6A_QZP-2021-06-23-01/personalized_analysis/nextflow-test/myrun/meripseqpipe/bin/QC_Peaks_Report.rmd ./
Rscript R_script/QC_Peaks_Report.R formatted_designfile.txt rank independence QCPeakPlot.RData
# Rscript /work/users/chenjun/Works/DYQ/meRIP_DYQ_control-treat-m6A_QZP-2021-06-23-01/personalized_analysis/nextflow-test/myrun/meripseqpipe/bin/QC_Peaks_Report.R formatted_designfile.txt rank independence QCPeakPlot.RData
R -e "load(\"QCPeakPlot.RData\");rmarkdown::render('QC_Peaks_Report.rmd',output_file='QC_Peaks_Report_rank.html')"
