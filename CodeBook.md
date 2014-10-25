### Introduction

This is Getting and Cleaning Data Project to prepare tidy data that can
be used for later analysis.

The CodeBook describes the variables and the data used to clean up and
create the data

### Variables
*“subjects”	The subject performed the activity, range 1 to 30 
*“activities”	It is six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
*“tBodyAcc-mean()-X" 
*"tBodyAcc-mean()-Y" 
*"tBodyAcc-mean()-Z" 
*"tBodyAcc-std()-X" 
*"tBodyAcc-std()-Y" 
*"tBodyAcc-std()-Z" 
*"tGravityAcc-mean()-X" 
*"tGravityAcc-mean()-Y" 
*"tGravityAcc-mean()-Z" 
*"tGravityAcc-std()-X" 
*"tGravityAcc-std()-Y" 
*"tGravityAcc-std()-Z" 
*"tBodyAccJerk-mean()-X" 
*"tBodyAccJerk-mean()-Y" 
*"tBodyAccJerk-mean()-Z" 
*"tBodyAccJerk-std()-X" 
*"tBodyAccJerk-std()-Y" 
*"tBodyAccJerk-std()-Z" 
*"tBodyGyro-mean()-X" 
*"tBodyGyro-mean()-Y" 
*"tBodyGyro-mean()-Z" 
*"tBodyGyro-std()-X" 
*"tBodyGyro-std()-Y" 
*"tBodyGyro-std()-Z" 
*"tBodyGyroJerk-mean()-X" 
*"tBodyGyroJerk-mean()-Y" 
*"tBodyGyroJerk-mean()-Z" 
*"tBodyGyroJerk-std()-X" 
*"tBodyGyroJerk-std()-Y" 
*"tBodyGyroJerk-std()-Z" 
*"tBodyAccMag-mean()" 
*"tBodyAccMag-std()" 
*"tGravityAccMag-mean()" 
*"tGravityAccMag-std()" 
*"tBodyAccJerkMag-mean()" 
*"tBodyAccJerkMag-std()" 
*"tBodyGyroMag-mean()" 
*"tBodyGyroMag-std()" 
*"tBodyGyroJerkMag-mean()" 
*"tBodyGyroJerkMag-std()" 
*"fBodyAcc-mean()-X" 
*"fBodyAcc-mean()-Y" 
*"fBodyAcc-mean()-Z" 
*"fBodyAcc-std()-X" 
*"fBodyAcc-std()-Y" 
*"fBodyAcc-std()-Z" 
*"fBodyAccJerk-mean()-X" 
*"fBodyAccJerk-mean()-Y" 
*"fBodyAccJerk-mean()-Z" 
*"fBodyAccJerk-std()-X" 
*"fBodyAccJerk-std()-Y" 
*"fBodyAccJerk-std()-Z" 
*"fBodyGyro-mean()-X" 
*"fBodyGyro-mean()-Y" 
*"fBodyGyro-mean()-Z" 
*"fBodyGyro-std()-X" 
*"fBodyGyro-std()-Y" 
*"fBodyGyro-std()-Z" 
*"fBodyAccMag-mean()" 
*"fBodyAccMag-std()" 
*"fBodyBodyAccJerkMag-mean()" 
*"fBodyBodyAccJerkMag-std()" 
*"fBodyBodyGyroMag-mean()" 
*"fBodyBodyGyroMag-std()" 
*"fBodyBodyGyroJerkMag-mean()" 
*"fBodyBodyGyroJerkMag-std()"

Below are another 66 variables to represent each measurement
In feature_info.txt, it said below signals used to estimate variables
of feature vector.  By extracting only mean() and std(), above variable list
is extracted.  Please note that meanFreq() is consider another variable for
estimation so it is not included when performing extraction

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*fBodyGyroJerkMag

### Data
In each row, the average of each activity and subject is shown under
each measurement

The data is normalized and bounded within [-1,1].

