# CookBook

## Action performed on Data
* Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Extract all the files
* install reshape 2
* run run_analysis.R script which creates tidy data set

The R scipt run_analysis.R performs following things:

* Read features from UCI HAR Dataset/features.txt file.
* Extract only mean and std features
* Read subject_test.txt, X_test.txt, y_test.txt under test folder
* Give descriptive name to extracted tables
* Merge subject, activity and data into one test table
* Read subject_train.txt, X_train.txt, y_train.txt under train folder
* Give descriptive name to extracted tables
* Merge subject, activity and data into one train table
* Merge test and train data
* Read activities from UCI HAR Dataset/activity_labels.txt file.
* Give descriptive activity names to name the activities in the data set
* Create a new dataset(tidy.txt) with the average of each variable for each activity and each subject.


## Tidy Data Columns

* subject - The person who perform the activity
* activity - The activity performed by person (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
*	tBodyAcc-mean()-X	: Described in feature selection
*	tBodyAcc-mean()-Y	: Described in feature selection
*	tBodyAcc-mean()-Z	: Described in feature selection
*	tBodyAcc-std()-X	: Described in feature selection
*	tBodyAcc-std()-Y	: Described in feature selection
*	tBodyAcc-std()-Z	: Described in feature selection
*	tGravityAcc-mean()-X	: Described in feature selection
*	tGravityAcc-mean()-Y	: Described in feature selection
*	tGravityAcc-mean()-Z	: Described in feature selection
*	tGravityAcc-std()-X	: Described in feature selection
*	tGravityAcc-std()-Y	: Described in feature selection
*	tGravityAcc-std()-Z	: Described in feature selection
*	tBodyAccJerk-mean()-X	: Described in feature selection
*	tBodyAccJerk-mean()-Y	: Described in feature selection
*	tBodyAccJerk-mean()-Z	: Described in feature selection
*	tBodyAccJerk-std()-X	: Described in feature selection
*	tBodyAccJerk-std()-Y	: Described in feature selection
*	tBodyAccJerk-std()-Z	: Described in feature selection
*	tBodyGyro-mean()-X	: Described in feature selection
*	tBodyGyro-mean()-Y	: Described in feature selection
*	tBodyGyro-mean()-Z	: Described in feature selection
*	tBodyGyro-std()-X	: Described in feature selection
*	tBodyGyro-std()-Y	: Described in feature selection
*	tBodyGyro-std()-Z	: Described in feature selection
*	tBodyGyroJerk-mean()-X	: Described in feature selection
*	tBodyGyroJerk-mean()-Y	: Described in feature selection
*	tBodyGyroJerk-mean()-Z	: Described in feature selection
*	tBodyGyroJerk-std()-X	: Described in feature selection
*	tBodyGyroJerk-std()-Y	: Described in feature selection
*	tBodyGyroJerk-std()-Z	: Described in feature selection
*	tBodyAccMag-mean()	: Described in feature selection
*	tBodyAccMag-std()	: Described in feature selection
*	tGravityAccMag-mean()	: Described in feature selection
*	tGravityAccMag-std()	: Described in feature selection
*	tBodyAccJerkMag-mean()	: Described in feature selection
*	tBodyAccJerkMag-std()	: Described in feature selection
*	tBodyGyroMag-mean()	: Described in feature selection
*	tBodyGyroMag-std()	: Described in feature selection
*	tBodyGyroJerkMag-mean()	: Described in feature selection
*	tBodyGyroJerkMag-std()	: Described in feature selection
*	fBodyAcc-mean()-X	: Described in feature selection
*	fBodyAcc-mean()-Y	: Described in feature selection
*	fBodyAcc-mean()-Z	: Described in feature selection
*	fBodyAcc-std()-X	: Described in feature selection
*	fBodyAcc-std()-Y	: Described in feature selection
*	fBodyAcc-std()-Z	: Described in feature selection
*	fBodyAcc-meanFreq()-X	: Described in feature selection
*	fBodyAcc-meanFreq()-Y	: Described in feature selection
*	fBodyAcc-meanFreq()-Z	: Described in feature selection
*	fBodyAccJerk-mean()-X	: Described in feature selection
*	fBodyAccJerk-mean()-Y	: Described in feature selection
*	fBodyAccJerk-mean()-Z	: Described in feature selection
*	fBodyAccJerk-std()-X	: Described in feature selection
*	fBodyAccJerk-std()-Y	: Described in feature selection
*	fBodyAccJerk-std()-Z	: Described in feature selection
*	fBodyAccJerk-meanFreq()-X	: Described in feature selection
*	fBodyAccJerk-meanFreq()-Y	: Described in feature selection
*	fBodyAccJerk-meanFreq()-Z	: Described in feature selection
*	fBodyGyro-mean()-X	: Described in feature selection
*	fBodyGyro-mean()-Y	: Described in feature selection
*	fBodyGyro-mean()-Z	: Described in feature selection
*	fBodyGyro-std()-X	: Described in feature selection
*	fBodyGyro-std()-Y	: Described in feature selection
*	fBodyGyro-std()-Z	: Described in feature selection
*	fBodyGyro-meanFreq()-X	: Described in feature selection
*	fBodyGyro-meanFreq()-Y	: Described in feature selection
*	fBodyGyro-meanFreq()-Z	: Described in feature selection
*	fBodyAccMag-mean()	: Described in feature selection
*	fBodyAccMag-std()	: Described in feature selection
*	fBodyAccMag-meanFreq()	: Described in feature selection
*	fBodyBodyAccJerkMag-mean()	: Described in feature selection
*	fBodyBodyAccJerkMag-std()	: Described in feature selection
*	fBodyBodyAccJerkMag-meanFreq()	: Described in feature selection
*	fBodyBodyGyroMag-mean()	: Described in feature selection
*	fBodyBodyGyroMag-std()	: Described in feature selection
*	fBodyBodyGyroMag-meanFreq()	: Described in feature selection
*	fBodyBodyGyroJerkMag-mean()	: Described in feature selection
*	fBodyBodyGyroJerkMag-std()	: Described in feature selection
*	fBodyBodyGyroJerkMag-meanFreq()	: Described in feature selection




# Feature Selection 

The features selected for this data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

