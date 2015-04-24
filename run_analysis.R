## Download file if doesn't exist
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "./getdata-projectfiles-UCI HAR Dataset.zip"
if(!file.exists(zipFile)) {
  print("Zip file doesn't exist downloading!!")
  download.file(fileUrl,zipFile,mode="wb")
}
## extracting zip
if(!file.exists("UCI HAR Dataset")) {
  print("unzipping file !!")
  unzip(zipFile)
}

## raw data files now exist
## create table with all test and train data sets together
## make sure have column indicating if test or train
dataDir   <- "./UCI HAR Dataset"
testXFile  <- paste(dataDir,"/test/X_test.txt",sep="")
testYFile  <- paste(dataDir,"/test/y_test.txt",sep="")
testSubFile  <- paste(dataDir,"/test/subject_test.txt",sep="")

trainXFile <- paste(dataDir,"/train/X_train.txt",sep="")
trainYFile <- paste(dataDir,"/train/y_train.txt",sep="")
trainSubFile  <- paste(dataDir,"/train/subject_train.txt",sep="")

testData <- cbind(read.table(testYFile),read.table(testSubFile),"test",read.table(testXFile))
testData <- data.frame(read.table(testYFile),read.table(testSubFile),"test",read.table(testXFile),stringsAsFactors=FALSE)
colnames(testData)[1:3]<-c("activity","subject","type")

trainData <- data.frame(read.table(trainYFile),read.table(trainSubFile),"test",read.table(trainXFile),stringsAsFactors=FALSE)
colnames(trainData)[1:3]<-c("activity","subject","type")

# 1 - Merges the training and the test sets to create one data set.
data <- rbind(testData,trainData)
rm(testData)
rm(trainData)

# 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- data.frame(read.table(paste(dataDir,"/features.txt",sep=""),stringsAsFactors = FALSE))
names(data)[-c(1,2,3)] <- gsub("[.]","",make.names(features[,2],unique = TRUE)) #name the measurments according to feature

library(dplyr)
data <- tbl_df(data)
data <- select(data,1:3,contains("mean"),contains("std"))

# 3 - Uses descriptive activity names to name the activities in the data set
activityMap <-read.table(paste(dataDir,"/activity_labels.txt",sep=""))
data$activity <- activityMap[data$activity,2]

# 4 - Appropriately labels the data set with descriptive variable names.
  # This was actually done in step #2 so nothing to do here

# 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject






