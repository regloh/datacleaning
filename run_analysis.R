# 0. Loading necessary libraries

library(dplyr)
# library(tidyr)

# 1. Merge the training and the test sets to create one data set.

## trainings set
df_train <- read.table("UCI HAR Dataset\\train\\X_train.txt", sep = "", header = FALSE)

df_subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt", sep = "", header = FALSE)

df_activity_train <- read.table("UCI HAR Dataset\\train\\y_train.txt", sep = "", header = FALSE)

df_train <- cbind(df_activity_train, df_subject_train, df_train)


## test set

df_test <- read.table("UCI HAR Dataset\\test\\X_test.txt", sep = "", header = FALSE)

df_subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt", sep = "", header = FALSE)

df_activity_test <- read.table("UCI HAR Dataset\\test\\y_test.txt", sep = "", header = FALSE)

df_test <- cbind(df_activity_test, df_subject_test, df_test)

# concatenate training and test datasets

df <- rbind(df_train, df_test)


# 2. Extract only the measurements on the mean and standard deviation for each measurement.
# Read column names for test and tranings set

features <- read.table("UCI HAR Dataset\\features.txt", sep = "", header = FALSE, stringsAsFactors=FALSE)

# create index vector for column names containing either 'mean' or 'std' as substring. This search excludes
# - all columns not containing either mean' or 'std'
# - all columns containing 'meanFreq'
# - all columns with name patterns like angle(*, *Mean) or angle(*Mean, *)

# include only columns  with  mean' or 'std' (this excludes angle columns but not'meanFreq' columns)
match<-grep("mean|std", features$V2)
mean_std_features <- features[match,]

# exclude the meanFreq columns from previous result
match<-grep("meanFreq", mean_std_features$V2, invert=TRUE)
mean_std_features <- mean_std_features[match,]

# extract the 'activity' and'subject' columns (1:2) and the columns containing 'mean' and 'std'. The indexes
# of the latter ones have to be increased by 2 because 'activity' and'subject' use already index 1 and 2.
# mean_std_features$V1 contains the indexes of names containg mean or std.

df_mean_std <- df[,c(1:2,mean_std_features$V1+2)]




# mean_std_features$V2 is a vector of column names containg the substring mean or std.


# 3. Use descriptive activity names to name the activities in the data set


activities <- read.table("UCI HAR Dataset\\activity_labels.txt", sep = "", header = FALSE)

# Merge the 2 data.frames on the activity column, which is in both data.frames = V1.

df_merged<-merge(activities,df_mean_std, by="V1")

# The merge column (specified in "by') is now column 1, column 2 (V2.x) contains the activity names and 
# the rest of the columns is from df_mean_std, excluding the merge column. The names and order of 
# df_mean_std have not changed except V2 was renamed to V2.y.

# remove the merge column
df_merged<-df_merged[-1]


# 4. Appropriately label the data set with descriptive variable names. 
descriptive_feature_names <- gsub("-", "",
                                  sub("-Z", "z",
                                      sub("-Y", "y",
                                          sub("-X", "x",
                                              sub("Jerk", "jerk",
                                                  sub("Mag", "magnitude",
                                                      sub("Gyro", "gyroscope",
                                                          sub("Freq","frequency",
                                                              sub("std", "standarddeviation",
                                                                  sub("\\(\\)", "",
                                                                      gsub("Body", "body",
                                                                           gsub("Gravity", "gravity",
                                                                                gsub("Acc", "accelerometer",
                                                                                     sub("^f", "frequency",
                                                                                         sub("^t", "time",
                                                                                             mean_std_features$V2)))))))))))))))



names(df_merged) <- c("activity", "subject", descriptive_feature_names)


# 5. From the data set in step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.

# first, wide variant

tidy_wide <- df_merged %>% group_by(activity,subject) %>%
                           summarise_each(funs(mean)) %>%
                           arrange(activity,subject)

# changing column names again: appending average to all feature columnnames

#avg_col_names <- paste0(beautified_feature_names,"average")
#names(tidy_wide) <- c("activity", "subject", avg_col_names)

# converting tidy_wide to a data.frame because class(tidy_wide)

write.table(tidy_wide, "tidy_wide.txt", row.names=FALSE)

