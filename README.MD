
#==================================================================
#Human Activity Recognition Using Smartphones Dataset
#Version 1.0
#==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.
The final results of statistics are displayed in a data set displaying the average of each variable for each activity and each subject. 


#The dataset includes the following files:
#=========================================

- 'README.txt'

- 'tidy_data_set.txt': Shows average of each variable for each activity and each subject

- 'run_analysis.R': Script used to create "tidy_data_set".

- 'CODEBOOK'


#Notes: 
#======

In order to properly view data set, please load in R by using the following function:
tidy_data_set <- read.table("tidy_data_set")
If dataset is still not viewable, please export to .csv using the following function:
write.csv(tidy_data_set),row.names=FALSE,file="tidy_data_set.csv")

In order to load script into R, please use the following steps

1) Use setwd() function to set working Directory to appropriate folder:
(i.e. setwd("C://Users//user//Documents//RData//data//UCI HAR Dataset")

2) Unzip Original Data Set to the Working Directory
(Original Data Set Location: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
-The following functions can be used to download set and unzip to Working Directory
get_url <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(get_url,"data.zip")
unzip("data.zip", exdir = "data")

3) Navigate to the R Program

4) Select (File) from the menu bar

5) Click (Open Script)

6) Select 'run_analysis.R' file

7) Run 'run_analysis.R' file


#=================================
#Assumptions
#=================================

The following assumptions were made made when calculating mean:

-Dataset contain all values containing 'Mean" in the variable name
(i.e. Mean(), Mean, mean)

-Dataset contain all values containing 'std' in the variable name
(i.e. std()

In order to load script into R, please use the following steps
1) Use setwd() function to set working Directory to appropriate folder
(i.e. setwd("C://Users//dpindling//Documents//RData//data//UCI HAR Dataset"

#==================
#Original Data Set
#==================

The orignal data used to produce tidy set can be found at the following location:

#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#=====================
#Variable Name Changes
#=====================

#The following name changes have been made to provide more descriptive meanings to valuable names.

-A number of characters (-,()) have been changed to " "
-"Z" has been changed to "Zaxis"
-"Y" has been changed to "Yaxis"
-"X" has been changed to "Xaxis"
-"^f" has been changed to "Frequency"
-"std" has been changed to "StandardDeviation"
-"mean" has been changed to "Mean"
-"Acc" has been changed to "Acceleration"
-"^t" has been changed to "Time" 

#License:
#========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about this dataset contact: activityrecognition@smartlab.ws