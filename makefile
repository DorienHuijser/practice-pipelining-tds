all: analysis data-preparation

.PHONY: all data-preparation analysis

# Run makefile in the data-preparation folder
data-preparation:
	$(MAKE) -C src/data-preparation

# Run makefile in the analysis folder
analysis: data-preparation
	$(MAKE) -C src/analysis

# Run the wipe.py files in the data-preparation and analysis folders
wipe: 
	$(MAKE) wipe -C src/data-preparation
	$(MAKE) wipe -C src/analysis
