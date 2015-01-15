## Getting and Cleaning Data - Course Project

The purpose of this project is to tidy and summarise data pertaining to wearable computing.

Descrption: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Source Dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Files in this repo

* README.md - currently reading this.
* CodeBook.md - outlines the variables, data and transformations.
* run_analysis.R - the R script to transform the data.

##Notes

* Only variables with mean() and std() are used.
* Requires the plyr and reshape2 packages.
* The script will download and unzip the file to the working directory.

##How do I use it?

Just run the run_analysis.R with $Rscript run_analysis.R or administer via RStudio/R

##What it does?

#Initial
* downloads the file
* unzips the file

##Step 1
* reads the column names, test, train and subjects data from features.txt, X_test.txt, y_test.txt, X_train.txt, y_train.txt, subject_test and subject_train.txt.
* combines all the relevant data and adds appropriate headers.

##Step 2
* selects the columns with mean and std in the names.
* subsets all the data

##Step 3
* replaces activity values with labels.

#Step 4
* cleans and simplifies the column names.

#Step 5
* creates a new dataframe with the average of each variable for each activity for each subject.

#Final Step
* creates a new tidy data set tidy_mean.txt


