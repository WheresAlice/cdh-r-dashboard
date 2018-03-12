# CDH R Dashboard

This R project renders a dashboard of future predictions for your CDH Cloudera Hadoop cluster.  Give it historical disk usage by user and it will predict future growth.

## Usage

1. Download a CSV of historical disk usage by user from the Reports dashboard in CDH Manager.  Whilst there is an API for this, it requires a higher level of access than the UI does.  The downloaded filename should be historicalDiskUsage.csv in this directory.
2. Run `make`.  This will clean the data and generate dashboard.html

## Dependencies

R:
 - prophet
 - ggplot2
 - dplyr
 - flexdashboard
 - rmarkdown
 - rstan
 - Rcpp

Other:
 - pandoc

## TODO

 - Create a Docker container (dependencies are tempremental)
 - Add a make task for installing dependencies
 - Add a make task for downloading the data
 - Do the data cleanup in R
 - Paramaterise the upper limit for storage
 - Render the upper limit on the Prophet version