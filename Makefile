.DEFAULT_GOAL: build
build:
	rm cleanedDiskUsage.csv
	grep -v "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0," historicalDiskUsage.csv > cleanedDiskUsage.csv
	Rscript -e 'library(rmarkdown); rmarkdown::render("dashboard.Rmd", output_file="dashboard.html")'
dep:
	Rscript -e 'install.packages("devtools", repos = "https://cloud.r-project.org/")'
	Rscript -e 'install.packages(c("ggplot2","prophet","dplyr"), repos = "https://cloud.r-project.org/")'
	Rscript -e 'devtools::install_github("rstudio/rmarkdown")'
	Rscript -e 'install.packages("rstan", repos = "https://cloud.r-project.org/", dependencies = TRUE)'
	Rscript -e 'install.packages(c("Rcpp", "rstan"), type = "source", repos = "https://cloud.r-project.org/")'
