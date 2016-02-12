## Getting and Cleaning Data Course - Final Project

Khawar Siddiqui

This is a data repository to submit the Final Course Project for "Getting and Cleaning Data" from John Hopkin's University through Coursera. 

### A Little Bit About The Project
The primary purpose of the project is to download a large raw untidy data set from a website, and clean into a tidy data set using "R" for further analysis. Detailed description of the data set used in this project can be found at [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

[The raw un-tidy data for this project can be downloaded from here:](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### The Script
The R language script (run_analysis.R) uploaded in this repository performs the following tasks:

1. First of all it download the raw data set if it does not exist in the working directory for R
2. It then loads the activity and feature information 
3. Then loads the training data set and the test data sets for only those columns which
   has a mean or standard deviation value recorded from the smart phone sensors
4. After that it takes the activity and subject data for both the data sets and then merges those
   columns into another dataset
5. Then merges the two data sets mentioned above
6. The `activity` and `subject` columns are then converted into factors
7. A tidy dataset consisting of the arithmatic mean of each
   variable for each subject and activity pair is created with appropriate labels describing the activity names.

The final data set resulting from this transformation is provided in the file `tidyDataKS.txt`.

### Word of Caution
To run the R script successfully, one has to change the path in the program file, where the raw untidy data set is residing on your computer. Secondly, use NotePad++ to read tidyDataKS.txt file.

### Data Dictionary
For detailed information on the variables please consult the data dictionary provided in CodeBook.MD file.

End of file. 
