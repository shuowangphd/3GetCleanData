#1Merges the training and the test sets to create one data set.

testSet  <- read.table("./test/x_test.txt")
testLabel  <- read.table("./test/y_test.txt")
testPerf  <- read.table("./test/subject_test.txt")

rSet  <- read.table("./train/x_train.txt")
rLabel  <- read.table("./train/y_train.txt")
rPerf  <- read.table("./train/subject_train.txt")

feat<- read.table("./features.txt")
activityLabel<- read.table("./activity_labels.txt")[,2]

set1<-rbind(rSet,testSet)
#4Appropriately labels the data set with descriptive variable names. 
names(set1)<-feat[,2]

label<-rbind(rLabel,testLabel)
performer<-rbind(rPerf,testPerf)#subject
performer2<-factor(as.vector(unlist(performer)))
names(performer2)<-"subject"
#2Extracts only the measurements on the mean and standard deviation for each measurement. 
feat2 <- grepl("mean\\(\\)|std\\(\\)", feat[,2])
set2 <- set1[,feat2]

#3Uses descriptive activity names to name the activities in the data set
label[,2] <- activityLabel[label[,1]]
set2n<-names(set2)
set2$activity<-label[,2]
set2$subject<-performer2

#5From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
library(reshape2)
setMelt<-melt(set2,id=c("activity","subject"),measure.vars=set2n)
set3<-dcast(setMelt,activity+subject~variable,mean)
write.table(set3, file = "tidydata.txt",row.name=FALSE)


