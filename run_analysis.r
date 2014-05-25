## Reading the activity labels file and adding names to the column. There are two columns in the file representing activity id and activity name.
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=F)
nrow(activity_labels)
names(activity_labels) <- c("activity_id","activity_names")
attributes(activity_labels)
dim(activity_labels)
names(activity_labels)

### Reading the training labels for training data. Data set contains information about labelling activity to each obervation i.e. observation was taken for walking or for standing etc. There is one column in the file. Added name to the column name as activity id.

observation_activity <- read.table("./UCI HAR Dataset/train/y_train.txt",header=F)
dim(observation_activity)
names(observation_activity) <- c("activity_id")

## Created a data frame for training data to map each obervation with the activity and and activity name.
##observation_activity_labels <- merge(observation_activity,activity_labels,by.x="activity_id",by.y="activity_id",all=F,sort=F)
observation_activity_labels <- join(observation_activity,activity_labels,type="inner")
names(observation_activity_labels) <- c("activity_id","activity_name")

## Read the subject_train file for Training Data. This file contains the information which subject has performed the activity. This file relates observation with the subject. This file contains information that which observation was taken for which subject.
subject_observation <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=F)
names(subject_observation) <- c("subject_id")

### Reading the training labels for test data. Data set contains information about labelling activity to each obervation i.e. observation was taken for walking or for standing etc. There is one column in the file. Added name to the column name as activity id.
observation_activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt",header=F)
dim(observation_activity_test)
names(observation_activity_test) <- c("activity_id")

## Created a data frame for test data to map each obervation with the activity and and activity name.
###observation_activity_labels_test <- merge(observation_activity_test,activity_labels,all=F,sort=F)
observation_activity_labels_test <- join(observation_activity_test,activity_labels,type="inner")
names(observation_activity_labels_test) <- c("activity_id","activity_name")

## Read the subject_train file for Training Data. This file contains the information which subject has performed the activity. This file relates observation with the subject. This file contains information that which observation was taken for which subject.
subject_observation_test <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=F)
names(subject_observation_test) <- c("subject_id")

### Reading variable names from features.txt and performing cleaning up. Various sorts of clean up were applied to get the meaningful variable names. Variables names were made more meaningful and in english like languages.
features <- read.table("./UCI HAR Dataset/features.txt",header=F)
names(features) <- c("id","features_name")
dim(features)

features$features_name <- gsub("BodyAcc","Body_Accelarometer",features$features_name)
features$features_name <- gsub("\\(\\)","_",features$features_name)
features$features_name <- gsub("-","_",features$features_name)
features$features_name <- gsub("BodyGyro","Body_Gyrometer",features$features_name)
features$features_name <- gsub("Gravity_Accelaration","Body_Accelaration",features$features_name)
features$features_name <- gsub("tBody","Time_Domain_Sig",features$features_name)
features$features_name <- gsub("tGravity","Time_Domain_Sig",features$features_name)
features$features_name <- gsub("fBody","Freq_Domain_Sig",features$features_name)
features$features_name <- gsub("fGravity","Freq_Domain_Sig",features$features_name)
features$features_name <- gsub("AccelarationMag","Accelaration_Magnitude",features$features_name)
features$features_name <- gsub("AccelarationJerkMag","Accelaration_Jerk_Magnitude",features$features_name)
features$features_name <- gsub("GyrometerJerkMag","Gyrometer_Jerk_Magnitude",features$features_name)
features$features_name <- gsub("Freq_Domain_SigBody","Freq_Domain_Sig_Body",features$features_name)
features$features_name <- gsub("GyrometerMag","Gyrometer_Magnitude",features$features_name)
features_name_vec <- features[,2]
### Reading the training set file. This file contains the observations and their measures. Added cleaned up column names to the record. There are  561 records in the files.
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt",header=F)
dim(X_train)
length(features_name_vec)
names(X_train) <- features_name_vec

### Reading the test set file. This file contains the observations and their measures. Added cleaned up column names to the record. There are  561 records in the files.
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt",header=F)
dim(X_test)

length(features_name_vec)
names(X_train) <- features_name_vec
names(X_test) <- features_name_vec

## Created a pattern to search for columns having names equal to mean and standard deviation (std). And created index in the data frame that contains only those columns which has mean and standard deviations in their names.
ptn <- c("mean","std")
indx <- unique(grep(paste(ptn,collapse="|"),features$features_name, perl=F,ignore.case=T,fixed=F))

## Create a dataframe for both training and test data along with all 561 columns. This combined adata frame contains all the records.
complete.train.subject_observation_df <- data.frame(subject_id=subject_observation[,c("subject_id")],observation_activity_labels,X_train)
complete.test.subject_observation_df.test <- data.frame(subject_id=subject_observation_test[,c("subject_id")],observation_activity_labels_test,X_test)
complete.subject_observation_df <- rbind(complete.train.subject_observation_df,complete.test.subject_observation_df.test)
write.table(complete.subject_observation_df,file="complete_data.csv",sep=",",col.names=T,row.names=F)

### Create a data frame for train and test data along with the columns that contains standard deviation and means in there names.
subject_observation_df.train <- data.frame(subject_id=subject_observation[,c("subject_id")],observation_activity_labels,X_train[,indx])
subject_observation_df.test <- data.frame(subject_id=subject_observation_test[,c("subject_id")],observation_activity_labels_test,X_test[,indx])
subject_observation_df <- rbind(subject_observation_df.train,subject_observation_df.test)

## Convert activity id and subject id as factor variables as we want to summary the data for every subject and every activity.
library(stats)
subject_observation_df$activity_id <- as.factor(subject_observation_df$activity_id)
subject_observation_df$subject_id <- as.factor(subject_observation_df$subject_id)

subject_observation_df.mean.std.dt <- data.table(subject_observation_df)
calculate.mean.std.dt <- subject_observation_df.mean.std.dt[,lapply(.SD,mean),by=c("subject_id","activity_id"),.SDcols=4:89]

calculate.mean.std.df <- data.frame(calculate.mean.std.dt)
temp <- join(calculate.mean.std.df,activity_labels,type="inner")
calculate.mean.std.df <- data.frame(temp[,c(1,2,89)],temp[,3:88])

## Save the data frame with the mean values of columns having names mean and std for all the activities pefromed by each subject.
write.table(calculate.mean.std.df,file="result_submit.csv",sep=",",col.names=T,row.names=F)
write.table(calculate.mean.std.df,file="tidy_data.txt",sep=",",col.names=T,row.names=F)
##write.table(subject_observation_df,file="result.csv",sep=",",col.names=T,row.names=F)