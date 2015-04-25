## Download file if doesn't exist
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "./getdata-projectfiles-UCI HAR Dataset.zip"
if(!file.exists(zipFile)) {
  print("Zip file doesn't exist downloading!!")
  download.file(fileUrl,zipFile,mode="wb")
} else {
  print("File already downloaded nothing todo!!")
}
## extracting zip
if(!file.exists("UCI HAR Dataset")) {
  print("unzipping file !!")
  unzip(zipFile)
} else {
  print("File already unzipped nothing todo!!")  
}

rm(fileUrl) #cleanup
rm(zipFile) #cleanup

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

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !!! Remark - Even though I wasn't asked to keep information regarding test/training I think 
# !!!             This is important so I added to data set
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
testData <- cbind(read.table(testYFile),read.table(testSubFile),"test",read.table(testXFile))
testData <- data.frame(read.table(testYFile),read.table(testSubFile),"test",read.table(testXFile),stringsAsFactors=FALSE)
colnames(testData)[1:3]<-c("activity","subject","type")

trainData <- data.frame(read.table(trainYFile),read.table(trainSubFile),"train",read.table(trainXFile),stringsAsFactors=FALSE)
colnames(trainData)[1:3]<-c("activity","subject","type")

# 1 - Merges the training and the test sets to create one data set.
print("1 - Merging training and test data sets!")

data <- rbind(testData,trainData)
rm(testData)
rm(trainData)

# 2 - Extracts only the measurements on the mean and standard deviation for each measurement. 
print("2 - Extracting only measurements on mean and std!!")

features <- data.frame(read.table(paste(dataDir,"/features.txt",sep=""),stringsAsFactors = FALSE))
names(data)[-c(1,2,3)] <- gsub("[.]","",make.names(features[,2],unique = TRUE)) #name the measurments according to feature

rm(features)      #cleanup

rm(testXFile)     #cleanup
rm(testYFile)     #cleanup
rm(testSubFile)   #cleanup
rm(trainXFile)    #cleanup
rm(trainYFile)    #cleanup
rm(trainSubFile)  #cleanup


library(dplyr)
data <- tbl_df(data)
data <- select(data,1:3,contains("mean"),contains("std"))

# 3 - Uses descriptive activity names to name the activities in the data set
print("3 - Adding descriptive activity names!!")

activityMap <-read.table(paste(dataDir,"/activity_labels.txt",sep=""))
data$activity <- activityMap[data$activity,2]

rm(activityMap) #cleanup

# 4 - Appropriately labels the data set with descriptive variable names.
  # This was actually done in step #2 so nothing to do here
print("4 - Adding appropiraite labels to data set columns, please find data in enviroment!!")

# 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
print("5 - Creating new tidy data set of averages per activity and subject, please find meanAndStdSumm in enviroment")
meanSumm <- data %>% group_by(activity,subject) %>% 
                    summarise_each(funs(Mean = mean(.)),vars = -c(1,2,3) )

print("!!!! Done !!!!!")




