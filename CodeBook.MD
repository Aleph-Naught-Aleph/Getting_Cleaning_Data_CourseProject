## CodeBook (Also Known as Data Dictionary)
__________________________________________________________

Project Name:................ Getting and Cleaning Data 

Project Lead:.................. Khawar Siddiqui
___________________________________________________________

### Project Description
This Course Project is being submitted to fulfill the requirement for passing the "Getting and Cleaning Data" course from John Hoppkins University through Coursera. 

### Initial / Raw Data Source:
[The Initial / Raw data used for processing in this assignment can be found here.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Data Set Description:
Detailed description of the raw data is available here: [The UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
 
### Data Set Information
A group of 30 volunteers (Age 19-48 years) participated in an experiment by wearing a smartphone (Samsung Galaxy S-II) and performing daily routine activities viz. Walking, Walking-Upstairs, Walking Downstairs, sitting, Standing and Laying. Linear acceleration and angular velocity were recorded at a constant rate of 50Hz using the accelerometer and gyroscope of the smartphone. The whole experiment was video recorded to label the data manually. The obtained data set was then randomly divided into two groups in the ratio of 70% and 30% in order to generate the Training Data Set and Test Data Set. 

According to the description of the experiment, the sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For every line of data set, following information is given:
1. Volunteer number or subject identifier wearing the smart phone
2. Activity (one from the six above)
3. 561 feture vector (with time and frequency variables, prefix "t" for time)
4. Tri-Axial acceleration - Total and Estimated Body Acceleration
5. Tri-Axial Angular Velocity 

## Row / Data Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken
_____________________________________________________

## Measurements
Following measurements are recorded in the data set

01. `tBodyAccMeanX`
02. `tBodyAccMeanY`
03. `tBodyAccMeanZ`
04. `tBodyAccStdX`
05. `tBodyAccStdY`
06. `tBodyAccStdZ`
07. `tGravityAccMeanX`
08. `tGravityAccMeanY`
09. `tGravityAccMeanZ`
10. `tGravityAccStdX`
11. `tGravityAccStdY`
12. `tGravityAccStdZ`
13. `tBodyAccJerkMeanX`
14. `tBodyAccJerkMeanY`
15. `tBodyAccJerkMeanZ`
16. `tBodyAccJerkStdX`
17. `tBodyAccJerkStdY`
18. `tBodyAccJerkStdZ`
19. `tBodyGyroMeanX`
20. `tBodyGyroMeanY`
21. `tBodyGyroMeanZ`
22. `tBodyGyroStdX`
23. `tBodyGyroStdY`
24. `tBodyGyroStdZ`
25. `tBodyGyroJerkMeanX`
26. `tBodyGyroJerkMeanY`
27. `tBodyGyroJerkMeanZ`
28. `tBodyGyroJerkStdX`
29. `tBodyGyroJerkStdY`
30. `tBodyGyroJerkStdZ`
31. `tBodyAccMagMean`
32. `tBodyAccMagStd`
33. `tGravityAccMagMean`
34. `tGravityAccMagStd`
35. `tBodyAccJerkMagMean`
36. `tBodyAccJerkMagStd`
37. `tBodyGyroMagMean`
38. `tBodyGyroMagStd`
39. `tBodyGyroJerkMagMean`
40. `tBodyGyroJerkMagStd`
41. `fBodyAccMeanX`
42. `fBodyAccMeanY`
43. `fBodyAccMeanZ`
44. `fBodyAccStdX`
45. `fBodyAccStdY`
46. `fBodyAccStdZ`
47. `fBodyAccMeanFreqX`
48. `fBodyAccMeanFreqY`
49. `fBodyAccMeanFreqZ`
50. `fBodyAccJerkMeanX`
51. `fBodyAccJerkMeanY`
52. `fBodyAccJerkMeanZ`
53. `fBodyAccJerkStdX`
54. `fBodyAccJerkStdY`
55. `fBodyAccJerkStdZ`
56. `fBodyAccJerkMeanFreqX`
57. `fBodyAccJerkMeanFreqY`
58. `fBodyAccJerkMeanFreqZ`
59. `fBodyGyroMeanX`
60. `fBodyGyroMeanY`
61. `fBodyGyroMeanZ`
62. `fBodyGyroStdX`
63. `fBodyGyroStdY`
64. `fBodyGyroStdZ`
65. `fBodyGyroMeanFreqX`
66. `fBodyGyroMeanFreqY`
67. `fBodyGyroMeanFreqZ`
68. `fBodyAccMagMean`
69. `fBodyAccMagStd`
70. `fBodyAccMagMeanFreq`
71. `fBodyBodyAccJerkMagMean`
72. `fBodyBodyAccJerkMagStd`
73. `fBodyBodyAccJerkMagMeanFreq`
74. `fBodyBodyGyroMagMean`
75. `fBodyBodyGyroMagStd`
76. `fBodyBodyGyroMagMeanFreq`
77. `fBodyBodyGyroJerkMagMean`
78. `fBodyBodyGyroJerkMagStd`
79. `fBodyBodyGyroJerkMagMeanFreq`

_____________________________________________________

## Activity Labels
1. `WALKING`						(value label `1`): subject was walking during the test
2. `WALKING_UPSTAIRS`		(value label `2`): subject was walking up a staircase during the test
3. `WALKING_DOWNSTAIRS`	(value label `3`): subject was walking down a staircase during the test
4. `SITTING`						(value label `4`): subject was sitting during the test
5. `STANDING`						(value label `5`): subject was standing during the test
6. `LAYING`							(value label `6`): subject was laying down during the test

_____________________________________________________

