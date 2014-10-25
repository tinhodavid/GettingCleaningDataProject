# run_analysis.R
run_analysis <- function() {
  
  ###################################################################################
  # create empty data frame to keep the merged data with descriptive activity names #
  ###################################################################################
  full_data_set <- data.frame(subject=integer(), activity_name=character())
  colnames <- names(full_data_set)
  
  ###################
  # handle data set #
  ###################
  # read train and test sets
  train <- read.table("UCI HAR Dataset/train/X_train.txt")
  test <- read.table("UCI HAR Dataset/test/X_test.txt")
  
  # merge into one data set
  test_train <- rbind(test, train)
  
  # extract only the measurements on the mean and standard deviation for each measurement
  ### firstly, read the features.txt and assign the names
  features <- read.table("UCI HAR Dataset/features.txt")
  names(test_train) <- features$V2
  ### secondly, find the mean() and std()
  use_std <- grepl("std()", features$V2)
  use_mean <- grepl("mean()", features$V2) & !grepl("meanFreq()", features$V2)
  ### finally, subset for mean and standard deviation measurements
  mean_std_test_train <- test_train[, use_std | use_mean]
  
  # save the mean_std_colnames
  mean_std_colnames <- names(mean_std_test_train)
  
  ####################
  # handle label set #
  ####################
  # read train and test labels
  train_label <- read.table("UCI HAR Dataset/train/y_train.txt")
  test_label <- read.table("UCI HAR Dataset/test/y_test.txt")
  
  # merge into one lable set
  label_set <- rbind(test_label, train_label)
  
  # record the row number.  It will be used for sorting after merged
  label_set$id <- 1:nrow(label_set)
  
  # read the activity labels
  activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
  
  # lookup the activity names
  activity_names <- merge(label_set, activity_labels, by="V1")
  
  # order the activity names based on recorded row number
  activity_names <- activity_names[order(activity_names$id), ]
  
  ######################
  # handle subject set #
  ######################
  # read train and set subjects
  train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
  test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
  
  # merge into one subject set
  subject_set <- rbind(test_subject, train_subject)
  
  ########################################################
  # Merge the full_data_set with subjects and activities #
  ########################################################
  # combin data to data frame
  full_data_set <- as.data.frame(c(mean_std_test_train, subject_set, as.data.frame(activity_names$V2)))
  
  # assign the names to data_st
  names(full_data_set) <- c(mean_std_colnames, colnames)
  
  ###################################################################################################
  # Generate the final data set for the average of each variable for each activity and each subject #
  ###################################################################################################
  # create combination of activity and subject
  subject_activity <- expand.grid(seq(1,30),activity_labels$V2)
  data_set <- subject_activity

  data_set[,3:(length(mean_std_colnames)+2)] <- NA
  names(data_set) <- c("subjects","activities", mean_std_colnames)
  
  # assign the average of each variable for each activity and each subject
  for (row in 1:length(data_set[,1])) {
    sel <- subset(full_data_set, subject == data_set[row, 1] & activity_name == data_set[row, 2])
    data_set[row,3:(length(mean_std_colnames)+2)] <- apply(sel[1:(length(mean_std_colnames))], 2, mean)
  }
  
  # write to txt file
  write.table(data_set, "data_set.txt", row.name=FALSE);
  
  # output the data_set
  data_set

}