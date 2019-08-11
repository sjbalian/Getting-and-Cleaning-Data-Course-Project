setwd("C:/Users/sbalian/Desktop/R/CleaningDataFinalProject/Getting-and-Cleaning-Data-Course-Project")
getwd()
library(reshape2)

filename <- "getdata_data.zip"

#### Download Data if it is not already ####
if (!file.exists(filename)) {
  fileURL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileURL, destfile = filename)
}

if (!file.exists("UCI HAR Dataset")) {
  unzip(filename)
}


#### Import the activities and features ####
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
activities$V2 <- as.character(activities$V2)

features <- read.table("UCI HAR Dataset/features.txt")
features$V2 <- as.character(features$V2)


#### Import train and test data ####
trainsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
trainactivities <- read.table("UCI HAR Dataset/train/y_train.txt")
traindata <- read.table("UCI HAR Dataset/train/x_train.txt")
train <- cbind(trainsubjects,trainactivities,traindata)


testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
testactivities <- read.table("UCI HAR Dataset/test/y_test.txt")
testdata <- read.table("UCI HAR Dataset/test/x_test.txt")
test <- cbind(testsubjects,testactivities,testdata)


#### Combining train and test datasets into one DF with only Mean and StDev Variables####

fulldata <- rbind(train,test)

colnames(fulldata) <- c("Subject", "Activity", features$V2)

featuresWantedcols <- grep(".*mean.*|.*std.*", colnames(fulldata))
featuresWantedcols <- c(which(colnames(fulldata)=="Subject"), which(colnames(fulldata)=="Activity"), featuresWantedcols)

fulldata <- fulldata[featuresWantedcols]


#### Renaming columns to descriptive names ####
colnames(fulldata) <- gsub("-mean", " Mean", names(fulldata))
colnames(fulldata) <- gsub("-std", " StDev", names(fulldata))
colnames(fulldata) <- gsub("[-()]", "", names(fulldata))
colnames(fulldata) <- gsub("^f", "Frequency ", names(fulldata))
colnames(fulldata) <- gsub("^t", "Time ", names(fulldata))


#### New dataset with averages of each variable for each activity and each subject ####

fulldata$Subject <- as.factor(fulldata$Subject)
fulldata$Activity <- factor(fulldata$Activity, levels = activities$V1, labels = activities$V2)


meltdf <- melt(fulldata, id=c("Subject", "Activity"))
meansdf <- dcast(meltdf, Subject + Activity ~ variable, mean)

####Writing final tidy dataframe to txt file####
write.table(meansdf, "step5tidydata.txt", row.names=FALSE, quote = FALSE)
