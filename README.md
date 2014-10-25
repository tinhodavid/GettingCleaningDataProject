### Introduction

This is Getting and Cleaning Data Project to prepare tidy data that can
be used for later analysis.

The README explains how the script work and run

### How it runs
The run_analysis.R in the working directory that can be run if the 
Samsung data is in the working directory

The Samsung data can be downloaded from below link
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After downloaded the zip file, unzip it to working directory and you will see
“UCI HAR Dataset” folder.

Then run_analysis.R will be able to run

### How it works
1. Read the train and test data and combine them
2. Extract the measurements on the mean and standard deviation of each measurement
3. Read the label set from train and test
4. Lookup the activity names through the label and name the activities to data set
   obtained in #1
5. Read the subject set from train and test
6. Create data frame with data set, subject set and activity names
7. Create new data set
8. Find the average of each subject and each activity in each measurement from 
   the data set obtained by #6
9. Assign the average to the new data set
 