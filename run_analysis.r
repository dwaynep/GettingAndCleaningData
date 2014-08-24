#Code to Change working Directory and assign 3 files to variable
setwd("C://Users//dpindling//Documents//RData//data//UCI HAR Dataset")
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
#features_info <- read.table("features_info.txt") 
setwd("C://Users//dpindling//Documents//RData//data//UCI HAR Dataset//train")
subject_train <- read.table("subject_train.txt")
X_train <- read.table("X_train.txt")
y_train <- read.table("y_train.txt")
setwd("C://Users//dpindling//Documents//RData//data//UCI HAR Dataset//test")
subject_test <- read.table("subject_test.txt")
X_test <- read.table("X_test.txt")
y_test <- read.table("y_test.txt")
 
#combine Test
x<- cbind(X_test,subject_test)
x<- cbind(x,y_test)
#combine Train
y<- cbind(X_train,subject_train)
y<- cbind(y,y_train)
#combine data
complete<-rbind(x,y)
#Add column names to data
colnames(complete)<-features[[2]]
#Update name of specific columns that need to be added (subject, activity)
colnames(complete)[562]<-"subject"
colnames(complete)[563]<-"activity"
#convert column to vector in order to add Activity
conver <- complete[,563]
#update column
convert <- gsub(1,activity_labels$V2[1],conver)
convert <- gsub(2,activity_labels$V2[2],convert)
convert <- gsub(3,activity_labels$V2[3],convert)
convert <- gsub(4,activity_labels$V2[4],convert)
convert <- gsub(5,activity_labels$V2[5],convert)
convert <- gsub(6,activity_labels$V2[6],convert)

#convert vector to Data Frame
complete[,563]<- convert

#code to only select Variables that only have Average or Standard Deviation
new <- complete[,grep("mean()|std()|meanFreq()|Mean", colnames(complete))]

#code to aggregate and subset the data ( Aggregation by subject and activity)
new2 <- aggregate(new[1:86], by=list(new$subject, new$activity), FUN=mean)

#code to update column names
colnames(new2)[1]  <- "subject"
colnames(new2)[2]  <- "activity"

#Code to remove unneeded information from variables
names(new2) <- gsub("-|\\()", "", names(new2))
names(new2) <- gsub("Z", "Zaxis", names(new2))
names(new2) <- gsub("Y", "Yaxis", names(new2))
names(new2) <- gsub("X", "Xaxis", names(new2))
names(new2) <- gsub("^f", "Frequency", names(new2))
names(new2) <- gsub("std", "StandardDeviation", names(new2))
names(new2) <- gsub("mean", "Mean", names(new2))
names(new2) <- gsub("Acc", "Acceleration", names(new2))
names(new2) <- gsub("^t", "Time", names(new2)) 


