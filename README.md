# Getting and Cleaning Data Course Project
The purpose of this project is to demonstrate how to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The data for the project is obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The cookbook explains summarize all the variables.

Install reshape2 library.The R scipt run_analysis.R performs following things
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


