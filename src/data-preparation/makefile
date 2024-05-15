# Makefile
# requires GNUMake32
# Installation instructions: http://tilburgsciencehub.com/setup

# prepare an empty dataset.csv that will be filled in the last step
prep: ../../gen/data-preparation/output/dataset.csv

# Execute the scripts one by one
# Syntax: 
# what-to-make: ingredients
# 	how-tomake
#
# or:
# outputfile.ext: script-to-run.ext required-input-file.ext
# 	language scriptname.ext

../../data/fortnite-rawdata.zip: download.py
	python download.py

../../gen/data-preparation/temp/unzipping.log: unzip.py ../../data/fortnite-rawdata.zip
	python unzip.py

../../gen/data-preparation/temp/parsed-data.csv: parse.py ../../gen/data-preparation/temp/unzipping.log
	python parse.py

../../gen/data-preparation/output/dataset.csv: textmining.py ../../gen/data-preparation/temp/parsed-data.csv
	python textmining.py

wipe:
	python wipe.py