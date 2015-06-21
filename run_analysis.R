#This file contains the code for the course project for Getting and Cleaning Data in the Data Science Specialization

# Section I: These first few steps consist of downloading the data onto the computer and importing it into R
# I.1 The necessary packages are loaded and attached. In this case, the dplyr package.
library(dplyr)
# I.2 Second, the data is loaded

# I.2.1 An appropriate url is assigned (the one provided in the instructions)
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# I.2.2 The files are downloaded and unzipped
download.file(url, destfile = "data.zip", method = "internal") #the destination filename is data.zip
unzip("data.zip")

# I.3 Now the test and training data are loaded appropriately

# I.3.1 The test set and activities
testSet <- read.table("./UCI HAR Dataset/test/X_test.txt") #test set
testSetLbl <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names="Activity") #test activity labels
testSetSub <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "Subject") #subjects who performed activity
testSet <-cbind(testSetSub,testSetLbl,testSet) #Merges the test set with its corresponding subjects and activities
rm(testSetLbl, testSetSub) #removes the now redundant data frames containing labels and subjects

# I.3.2 The training set and activities
trainSet <- read.table("./UCI HAR Dataset/train/X_train.txt") #training set
trainSetLbl <- read.table("./UCI HAR Dataset/train/y_train.txt",col.names="Activity") #training activity labels
trainSetSub <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "Subject") #subjects who performed activity
trainSet <-cbind(trainSetSub,trainSetLbl,trainSet) #Merges the training set with its corresponding subjects and activities
rm(trainSetLbl, trainSetSub) #removes the now redundant data frames containing labels and subjects

# Section II: These steps include the solutions according to the instructions. The numbering is maintained from the instructions as well.
# II.1. Merge the test and training datasets to create one data set
fullSet<-rbind(testSet,trainSet) #The resulting data set is called fullSet

# II.4. Appropriately labels the data set with descriptive variable names. 
# II.4.1 First the variable names are obtained from the features.txt file
features <- read.table("./UCI HAR Dataset/features.txt",colClasses="character") 
# II.4.2 #The names are assigned to the columns. The first 2 columns are assigned the same name they had
colnames(fullSet) <- c("Subject", "Activity", features$V2)

# II.2. Extracts only the mean and standard deviation for each measurement
# II.2.1 #Only the variables that contain "Subject", "Activity", "mean()" or "std()" are saved
fullSet<- fullSet[,grep("Subject|Activity|mean\\(\\)|std\\(\\)", names(fullSet), value=TRUE)]
# II.2.2 Variable names are updated to remove unwanted characters, such as () or - 
colnames(fullSet)<- gsub("\\(\\)","",colnames(fullSet)) # The variable names are updated to remove () from the variable names replacing it with nothing
colnames(fullSet)<- gsub("\\-","_",colnames(fullSet)) # The variable names are updated to remove - from the variable names, replacing it with _
colnames(fullSet)<- tolower(colnames(fullSet)) # The variable names are uptated to include only lowercase letters
# II.3. Uses descriptive activity names to name the activities in the data set
# II.3.1 First the activity name and code are obtained from the activity_labels.txt file
activities <- read.table("./UCI HAR Dataset/activity_labels.txt",colClasses="character") 
# II.3.2 The labels are assigned to the Activity variable using the dowloaded file
fullSet$activity <- factor(fullSet$activity, #The variable Activity is selected
                            levels=activities$V1, #The levels are the first column in the activity_labels.txt file
                            labels=activities$V2) #The labels are the second column in the activity_labels.txt file

# II.5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# II.5.1 First the dplyr package is used to summarize the information
tidyAvg<-group_by(fullSet, subject, activity) %>% summarise_each(funs(mean))
# II.5.2 The tidy data is saved onto a .txt file as instructed
write.table(tidyAvg,file="tidy.txt",sep=",",row.names = FALSE)

