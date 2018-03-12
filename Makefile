.DEFAULT_GOAL: build
build:
	rm cleanedDiskUsage.csv
	grep -v "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0," historicalDiskUsage.csv > cleanedDiskUsage.csv
	Rscript -e 'library(rmarkdown); rmarkdown::render("dashboard.Rmd", output_file="dashboard.html")'
