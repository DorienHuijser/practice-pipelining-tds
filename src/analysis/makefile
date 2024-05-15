# Makefile
# requires GNUMake32
# Installation instructions: http://tilburgsciencehub.com/setup


analyze: ../../gen/analysis/output/analysis.html

../../gen/analysis/temp/preclean.csv: preclean.R ../../gen/data-preparation/output/dataset.csv
	R --vanilla --args "" < "preclean.R"

# Because of the error 
# "Error: pandoc version 1.12.3 or higher is required and was not found (see the help page ?rmarkdown::pandoc_available).
# Execution halted"
# I had to explicitly tell make where to find pandoc with Sys.setenv(RSTUDIO_PANDOC='path')
# I think this has to do with the fact that pandoc is located in the RStudio folder, and not the bin folder
# The RStudio folder is not in the Windows path.
# Also tried Sys.setenv(RSTUDIO_PANDOC=rmarkdown::find_pandoc()$dir) to avoid pasting a literal path,
# but this unfortunately did not work ("Error: unexpected symbol in "Sys.setenv(RSTUDIO_PANDOC=rmarkdown::find_pandoc()ir""
../../gen/analysis/output/analysis.html: analysis.Rmd ../../gen/analysis/temp/preclean.csv
	R -e "Sys.setenv(RSTUDIO_PANDOC='C:/R423/RStudio/resources/app/bin/quarto/bin/tools'); rmarkdown::render('analysis.Rmd', output_file = '../../gen/analysis/output/analysis.html')"

wipe:
	python wipe.py