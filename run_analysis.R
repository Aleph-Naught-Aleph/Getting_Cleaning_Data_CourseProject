#----------------------------------------------
# Script Name:............. run_analysis.R
# By:...................... Khawar Siddiqui
# Dated:................... 12 Feb 2016
# Purpose:................. Course Assignment
# Brief:...................
# The script needs the data files downloaded from 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# and already present in the working directy.
# It performs Five (5) tasks as required by the Course Assignment list on
# https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
# Each task is listed and commented before the script works on it.
#-----------------------------------------------

#...... Work Place Set-up
rm(list=ls())
setwd('E:/WORKING/ZERO_01/COURSERA/COURSE_03/FinalAssignment/data')

# Task 1. Combine Training and Test Data sets to create one data set.

#...... Getting Data from files
featuresTxt = read.table('features.txt',header=FALSE)
activityType = read.table('activity_labels.txt',header=FALSE)
subjects_Train = read.table('subject_train.txt',header=FALSE)
x_Train = read.table('x_train.txt',header=FALSE)
y_Train = read.table('y_train.txt',header=FALSE)

# Next 4 lines give column headings or variable names to Four Tables 
colnames(activityType)  = c('activityId','activityType')
colnames(subjects_Train)  = "subjectId"
colnames(x_Train)        = featuresTxt[,2] 
colnames(y_Train)        = "activityId"

# Checking the data tables
str(activityType)
str(subjects_Train)
str(x_Train)
str(y_Train)

# Now making the Training data set by merging yTrain, subjectTrain, and xTrain
training_DataSet = cbind(y_Train,subjects_Train,x_Train)
str(training_DataSet)

# Getting the Test Data Set
subjectS_Test = read.table('subject_test.txt',header=FALSE)
x_Test = read.table('x_test.txt',header=FALSE)
y_Test = read.table('y_test.txt',header=FALSE)

# Naming the Columns for the test data set
colnames(subjectS_Test) = "subjectId"
colnames(x_Test) = featuresTxt[,2]
colnames(y_Test) = "activityId"

# Now Making the Test Data set through merging the x_Test, y_Test & subjects_Test tables
test_DataSet = cbind(y_Test,subjectS_Test,x_Test)
str(test_DataSet)

# Marriage of Training Data Set & Test Data Set
big_DataSet = rbind(training_DataSet,test_DataSet)
str(big_DataSet)

# Getting Column Names from Big_dataSet to a vector
colNames_big_DataSet  = colnames(big_DataSet)
str(colNames_big_DataSet)
#----------------------------------------------- End of Task 1
# Task 2. Extract only measurements on mean & standard deviation. 
MeanSD_Vector = (grepl("activity..",colNames_big_DataSet) |
                 grepl("subject..",colNames_big_DataSet) |
                 grepl("-mean..",colNames_big_DataSet) & !
                 grepl("-meanFreq..",colNames_big_DataSet) & !
                 grepl("mean..-",colNames_big_DataSet) | 
                 grepl("-std..",colNames_big_DataSet) & !
                 grepl("-std()..-",colNames_big_DataSet))
str(MeanSD_Vector)

big_DataSet = big_DataSet[MeanSD_Vector==TRUE]
str(big_DataSet)
#----------------------------------------------- End of Task 2
# Task 3. Using descriptive activity names to name the activities in the data set

# Merge the big_DataSet with the acitivityType table to have descriptive activity names
big_DataSet = merge(big_DataSet, activityType, by='activityId', all.x=TRUE)
str(big_DataSet)
head(big_DataSet$activityType.x)
head(big_DataSet$activityType.y)

colNames_big_DataSet = colnames(big_DataSet) 
colNames_big_DataSet
#----------------------------------------------- End of Task 3
# Task 4. Appropriately label the data set with descriptive activity names. 
for (i in 1:length(colNames_big_DataSet)) 
{
  colNames_big_DataSet[i] = gsub("\\()","",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("-std$","_Std_Dev",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("-mean","_Mean",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("^(t)","Time",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("^(f)","Frequency",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("([Gg]ravity)","_Gravity",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","_Body",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("[Gg]yro","_Gyro",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("AccMag","_Acc_Magnitude",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("([Bb]odyaccjerkmag)","_Body_AccJerk_Magnitude",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("JerkMag","_Jerk_Magnitude",colNames_big_DataSet[i])
  colNames_big_DataSet[i] = gsub("GyroMag","_Gyro_Magnitude",colNames_big_DataSet[i])
}
colNames_big_DataSet
# Reassigning the new descriptive column names to the finalData set
colnames(big_DataSet) = colNames_big_DataSet
#----------------------------------------------- End of Task 4
# Task 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 

# Create a new table, finalDataNoActivityType without the activityType column
#finalDataNoActivityType  = finalData[,names(finalData) != 'activityType'];

data_WriteOut = big_DataSet[,names(big_DataSet) != 'activityType']
head(data_WriteOut)



# Summarizing the finalDataNoActivityType table to include just the mean of each variable for each activity and each subject
writeOut_Data    = aggregate(data_WriteOut[,names(data_WriteOut) != c('activityId','subjectId')],
              by=list(activityId=data_WriteOut$activityId,subjectId = data_WriteOut$subjectId),mean)
head(writeOut_Data)

# Merging the tidyData with activityType to include descriptive acitvity names
writeOut_Data = merge(writeOut_Data,activityType,by='activityId',all.x=TRUE)
head(writeOut_Data)

# Spitting the Final Tidy Data out in a Text File. Use NotePad++ to view the file 
write.table(writeOut_Data, 'tidyDataKS.txt',row.names=TRUE,sep=",")

#----------------------------------------------- End of Task 5
#----------------------------------------------- End of Script
#----------------------------------------------- Total Lines 133


