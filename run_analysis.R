#subject_test - each row corresponds to subjects who performed activity
#x - each row is a vector of 561 features
#y - each row is the activity performed

#read features
features_full <- read.table("./UCI HAR Dataset/features.txt")

#extract only mean or std measurements
extract_features <- grepl("mean|std", features_full[,2])
features_extracted <- features_full[extract_features,2]

#Read test set
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt")

#setname for subject and activity
colnames(test_subject) <- c("subject")
colnames(test_y) <- c("activity")
names(test_x) <- features_full[,2]

test_x <- test_x[,extract_features]

#merge test set
test_merged <- cbind(test_subject,test_y,test_x)

#Read train set
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt")

#setname for subject and activity
colnames(train_subject) <- c("subject")
colnames(train_y) <- c("activity")
names(train_x) <- features_full[,2]

train_x <- train_x[,extract_features]

#merge train set
train_merged <- cbind(train_subject,train_y,train_x)

#merge test and train
merged <- rbind(test_merged,train_merged)


#Read activities names
activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt")

#Give descriptive activity names to name the activities in the data set
merged$activity <- factor(merged$activity, levels = activity_names[,1], labels = activity_names[,2])

#find mean by activity and subject
merged.melted <- melt(merged, id = c("subject", "activity"))
merged.mean <- dcast(merged.melted, subject + activity ~ variable, mean)

#write to table
write.table(merged.mean, "tidy.txt", row.names = FALSE, quote = FALSE)