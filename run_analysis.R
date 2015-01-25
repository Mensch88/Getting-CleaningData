# Step 1: Merges the training and the test sets to create one data set.
# get the labels

# load feature labels
features <- read.table("./UCI HAR Dataset/UCI HAR Dataset/features.txt", 
                       col.names=c("id", "label"), stringsAsFactors = FALSE)
labels <- features$label

# load train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = labels)

y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = c("activity"))
y_train$activity <- as.factor(y_train$activity)

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                            col.names = c("subject_id"))
subject_train$subject_id <- as.factor(subject_train$subject_id)

trainData <- cbind(X_train, subject_train, y_train)

# load test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = labels)
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = c("activity")) 
y_test$activity <- as.factor(y_test$activity)

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                           col.names = c("subject_id"))
subject_test$subject_id <- as.factor(subject_test$subject_id)

testData <- cbind(X_test, subject_test, y_test)

# merge train and test
combinedData <- rbind(trainData, testData)

# Step2. Extracts only the measurements on the mean and standard deviation for
# each measurement. 
library(dplyr)
df <- select( combinedData, subject_id, activity, 
              grep("(mean|std)\\.{2}", names(combinedData)) )

# Step3. Uses descriptive activity names to name the activities in the data set
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("id", "label"), 
                       stringsAsFactors = FALSE)
activity$label <- sub("_", " ", tolower(activity$label))

df$activity <- factor(df$activity, labels=activity$label, ordered=FALSE)


# Step 4: Appropriately labels the data set with descriptive activity names. 
names(df) <- gsub("^t", "time", names(df))
names(df) <- gsub("^f", "freq", names(df))
names(df) <- gsub("\\.std", "Std", names(df))
names(df) <- gsub("\\.mean", "Mean", names(df))
names(df) <- gsub("[\\.]+", "", names(df))

#write.table(df, "merged_data.txt") # write out the 1st dataset

# Step 5: Creates a second, independent tidy data set with the average of each
# variable for each activity and each subject. 
tidy_data <- df %>% group_by(subject_id, activity) %>% summarise_each(funs(mean))

write.table(tidy_data, "tidy_data.txt", row.name=FALSE)
