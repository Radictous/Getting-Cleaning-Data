### Title :    "run_analysis.R"
##  Source of data for the project
# fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# download.file(fileUrl,destfile="./data/dataset.zip",mode="wb")
# unzip(zipfile="./data/dataset.zip",exdir=".")
##  Goals
# 1.- To Merge the training and the test sets to create one data set.
# 2.- To Extract only the measurements on the mean and standard deviation for each measurement. 
# 3.- To Use descriptive activity names to name the activities in the data set
# 4.- To Label the data set Appropriately with descriptive activity names. 
# 5.- To Create a second, independent tidy data set with the average of each variable for each activity and each subject.
##  1.- To Merge the training and the test sets to create one data set.
d1<- read.table("./UCI HAR Dataset/train/subject_train.txt",header=F,col.names=c("subjectID"))
d2<- read.table("./UCI HAR Dataset/test/subject_test.txt",header=F,col.names=c("subjectID"))
s<- rbind(d1,d2)
d3<- read.table("./UCI HAR Dataset/train/y_train.txt",header=F,col.names=c("activityID"))
d4<- read.table("./UCI HAR Dataset/test/y_test.txt",header=F,col.names=c("activityID"))
y<- rbind(d3,d4)
varX<-read.table("./UCI HAR Dataset/features.txt",header=F,as.is=T,col.names=c("varID","varName"))
d5<- read.table("./UCI HAR Dataset/train/X_train.txt",header=F,col.names=varX$varName)
d6<- read.table("./UCI HAR Dataset/test/X_test.txt",header=F,col.names=varX$varName)
X<- rbind(d5,d6)
##  2.-  To extract the measurements on the mean and standard deviation for each measurement
meanStdX<- grep(".*mean\\(\\)|.*std\\(\\)",varX$varName)
names(X)<- gsub("\\(|\\)","",names(X))
names(X)<- tolower(names(X))
names(X)<- gsub("\\.\\.","",names(X))
X<-X[,meanStdX]
##  3.- To use descriptive activity names for the activities.
activities<-read.table("./UCI HAR Dataset/activity_labels.txt",header=F,col.names=c("activityID","activityName"))
activities$activityName=gsub("_","",tolower(as.character(activities$activityName)))                       
y[,1]=activities[y[,1],2]
names(y)<-c("activity")
##  4.-  To label the data set Appropriately with descriptive activity names. 
data<-cbind(s,y,X)
write.table(data,"./data/SamsungDataSet.txt")
##  5.-  To create an independent tidy data set with the average for activity and subject
US<-unique(s$subjectID)
nUS<- length(US)
nAUS<- length(activities$activityName)
nC = dim(data)[2]
result=data[1:(nUS*nAUS),]
row=1 
  for(n in 1:nUS){
    for(m in 1:nAUS){
      result[row,1]=US[n]
      result[row,2]=activities[m,2]
      t<-data[data$subject==n & data$activity==activities[m,2],]    
        for(p in 3:nC){
          result[row,p]<-mean(t[,p],na.rm=T)
        }
    row=row+1
    }
  }
write.table(result,"./data/SamsungDataSetMeans.txt")

