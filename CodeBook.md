## Raw data
The raw data were obtained from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. A full description of the original data is available here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## the following steps are performed to extract data:

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* write this second data set to the file 'tidydata.txt'.


## Variables in the Output data:
* activity: 6 levels including LAYING,SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS,and WALKING_UPSTAIRS.
* subject: performer ID, levels from 1 to 30.
* the 66 variables on the mean and standard deviation extracted from raw data. See 'feature_info.txt' in the raw data for details.


