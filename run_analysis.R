library(plyr)
library(reshape2)


setwd("/Users/Sahil/Courses/Coursera/Getting And Cleaning Data/Course Porject")
#Set the working directory for the project


fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#url for the zip file containing data for the assignment

download.file(fileUrl, destfile = "./data.zip", method = "curl")
#donloads the zip file into the working directory

unzip("./data.zip", overwrite = TRUE)
#unzip the file

#Step 1

#read table of 561 column titles
column.labels <- read.table("./UCI HAR Dataset/features.txt", header = FALSE)

#This gets the data
test.data <- read.table("./UCI HAR Dataset/test/X_test.txt", header = FALSE)
#reads data values of test data into a variable
test.labels <- read.table("./UCI HAR Dataset/test/y_test.txt", header = FALSE)
#reads labels values of test data into a variable
test.subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
#reads subjects values of test data into a variable

train.data <- read.table("./UCI HAR Dataset/train/X_train.txt", header = FALSE)
#reads data values of train data into a variable
train.labels <- read.table("./UCI HAR Dataset/train/y_train.txt", header = FALSE)
#reads labels values of train data into a variable
train.subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt", header = FALSE)
#reads subjects value of train data into a variable


#combines the test and train data by rows
test.train.data <- rbind(test.data, train.data)
test.train.labels <- rbind(test.labels, train.labels)
test.train.subjects <- rbind(test.subjects, train.subjects)


#this adds the right headers
names(test.train.subjects) <- c("subjects")
names(test.train.labels) <- c("activity")

names(test.train.data) <- column.labels$V2

#now, the following will combine test.traindata, test.train.labels, and test.train.subjects

datamid <- cbind(test.train.subjects, test.train.labels)
datatot <- cbind(test.train.data, datamid)

#datatot is now a data-frame with all the data combined and labeled as directed by step1

#Step 2

mean.std.labels <- column.labels$V2[grepl("mean\\(\\)|std\\(\\)", column.labels$V2)]
#Gets the column names with mean and std


selectedNames <- c(as.character(mean.std.labels),"subjects", "activity")
# Selects the names of columns with mean, std, subjects and labels

selectedData <- subset(datatot, select=selectedNames)
#This is now a subset of the data of columns with mean, std, subjects and labels
#It should be of dimensions 10299 vs 68

#Step 3

#Following functions in step 3 will extract activity labels and then implement those appropriately

activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header = FALSE)
#activity labels has the numbers and corresponding activity labels.

selectedData$activity <- activity[selectedData$activity,2]
#replaces labels from names to labels


#Step 4

#Appropriately labels the data set with descriptive variable names
names(selectedData) <- gsub("^t", "time", names(selectedData))
#converts names with t as first character, to time
names(selectedData) <- gsub("^f", "frequency", names(selectedData))
#converts name with f as first character, to frequency
names(selectedData) <- gsub("Acc", "Accelerometer", names(selectedData))
#Acc to Accelerometer
names(selectedData) <- gsub("Gyro", "Gyroscope", names(selectedData))
#Gyro to Gyroscope
names(selectedData) <- gsub("Mag", "Magnitude", names(selectedData))
#Mag to Magnitude
names(selectedData) <- gsub("BodyBody", "Body", names(selectedData))
#BodyBody to Body


#Step 5

tidy.mean <- ddply(melt(selectedData, id.vars=c("subjects", "activity")), .(subjects, activity), summarise, MeanSamples=mean(value))
#creates the second, independent tidy data set with the average of each variable for each activity for each subject

write.table(tidy.mean, file = "./tidy_mean.txt", row.name = FALSE)
#this is an output of the final ti
