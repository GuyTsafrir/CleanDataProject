This README explains how to use the scripts and what they do.

Files:
1. README.md      - This readme manual that explains how to use and what is included in this project
2. CodeBook.md    - Explainition about the data variables of the results
3. run_analysis.R - R script for cleaning and extracting the desired data

after running:
4. getdata-projectfiles-UCI HAR Dataset.zip - data set zip file
5. UCI HAR Dataset - unzipped folder holding the data set

Prerequisits:
1. R version 3.1.3 was used to create this script
2. dplyr package is used, needs to be installed before running

Usage:

> source("./run_abalysis.R")

Thats it!!

Results:
1. data           - tbl_df which holds all required data (Read CodeBook for details)
2. meanSumm       - grouped_df which holds the summarized data (Read CodeBook for details)

Remarks:
1. If you don't have the data already downloaded then internet connection is required.


Thank you and enjoy
;-)