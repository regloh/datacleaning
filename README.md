

# Overview

This document describes how to use the script run_analysis.R to create a tidy data set requested by
the Coursera course "Geting and cleaning data".

## Prerequisite

As a prerequisite the data to be processed has to be downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and extracted to the folder where the script is located.
After extraction there should be a sub folder "UCI HAR Dataset", which itself has 2 sub folders "train" and "test".

## Running the script

If the prerequisite is met, the script can just be run with source("run_analysis.R") in an R session.


## Processing

### Used library

The library dplyr has been used.

### Reading input data

First, the feature data is read for the trainings data set (df\_train). The information which activity (df\_activity\_train) and which subject (df\_subject\_train) is associated with every row of the feature data is also read.

The 3 data sets are then combined (column wise), with the activity in the first column, followed by the subject and features overriding the original in new data frame df\_train.

Second, the feature data is read for test data (df\_test) set and processed in a similar way like the training data sets.

df\_train and df\_test are then combined rowwise resulting in data frame df.

All files did not include header rows.

### Extracting the required columns

The requirement was to extract only the measurements on the mean and standard deviation for each measurement.

From the features_info.txt file in the above mentioned zip-file, documents as mean and standard deviation those whose names contain "std()" or "mean()". 

There are columns containing "meanFreq()", but according to the explanation this is the "weighted average of the frequency components to obtain a mean frequency". So it is not a mean value, but can be used to calculate a mean value. Therefore all those columns are excluded.

Also columns which represent an euclidean norm of mean or standdard deviation values (for x,y and z directions) have been excluded, because a norm is not mean or standard deviation. This affects columns containing the string 'Mag'.

The file features.txt containing all column names lists also names like angle(\*, \*Mean) or angle(\*Mean, \*). Those columns are also excluded because features_info.txt explains for the angle() columns, that they represent an angle between two vectors, but an angle is not a mean value, if one of the vectors represents a mean.

The column names for the feature data is provided in a separate file features.txt. That file is loaded. The required indices of the columns according to the above description are extracted with the grep command.
The loaded data set is subset with the column indices resulting in the data frame mean\_std\_features where column V1 contains the column index and column V2 the original column name of the selected mean and standard deviation columns.

The new data frame df\_mean\_std is created from sub setting df using the calculated column indices (mean\_std\_features$V2). Please not that the column indices had to be incremented by 2, because the first 2 columns of df, where not features but the activity and subject columns.

### Use descriptive activity names to name the activities

Activities are coded as integers in the data frame and should be converted to string representation available the file activity\_labels.txt. This file is imported into the data frame 'activities'. The first column of this data frame contains the integer representation (used in df\_mean\_std), the second one contains a textual description.

The two data frames 'activities' and 'df\_mean\_std' are merged on the common merge column V1 containing the integer representation of the activity.

The resulting data frame df\_merged contains as first column the activity (integer).  Column 2 (V2.x) contains the activity names and the rest of the columns is from df\_mean\_std, excluding the merge column. The names and order of 
Df\_mean\_std have not changed except V2 was renamed to V2.y.

The merge column (column 1) is removed from df\_merged, so that the df\_merged resembles df\_std_mean, except that the first column now contains the activity names instead of their integer representation.

### Appropriately label the data set with descriptive variable names

This labeling of the variables is done according to the course material 04\_01\_editingTextVariables.pdf, even this results into strange looking names, which are not easy to read (that's my private opinion).
Especially all characters are converted to lower case and some special characters (Parenthesis) ) have been removed. Abbreviations have also been expanded. Dashes have not been specially mentioned there, but because dots and underscores are excluded I think that all special characters should be excluded.

The conversion is done in a sequence of nested sub() and gsub() function calls and the result then assigned to df\_merged.

### Creation of tidy data set containing the average of each variable for each activity and each subject

The tidy data set tidy\_wide was created by simply chaining the dplyr function group\_by, summarize_each (using mean), and arrange.

One could think, that the x,y and z suffixes for all variable names are actual values and could be stored e.g. in a separate column 'axis'. But I think that the accelerations and angular velocities are entities which are described in the 3 spatial directions and have to be treated as a group of observations, which should not be separated.

The data set is written out in a white space delimited text file named tidy\_wide.txt.

### Reading the uploaded text file

The text file can be read with

my\_df<- read.table("tidy\_wide.txt", header=TRUE)