fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
download.file(fileUrl, 'samsung_data.zip')
unzip('samsung_data.zip')

data1_x <- read.table('UCI HAR Dataset/train/X_train.txt', stringsAsFactors = FALSE)
data1_y <- read.table('UCI HAR Dataset/train/y_train.txt', stringsAsFactors = FALSE)
data1_s <- read.table('UCI HAR Dataset/train/subject_train.txt', stringsAsFactors = FALSE)
data2_x <- read.table('UCI HAR Dataset/test/X_test.txt', stringsAsFactors = FALSE)
data2_y <- read.table('UCI HAR Dataset/test/y_test.txt', stringsAsFactors = FALSE)
data2_s <- read.table('UCI HAR Dataset/test/subject_test.txt', stringsAsFactors = FALSE)
key <- read.table('UCI HAR Dataset/activity_labels.txt', stringsAsFactors = FALSE)

train <- cbind(data1_s, data1_x, data1_y)
test <- cbind(data2_s, data2_x, data2_y)
data <- rbind(train, test)

f_data <- data[, c(1, 2, 3, 4, 5, 6, 7, 42, 43, 44, 45, 46, 47, 82, 83, 84, 85, 86, 87, 122, 123, 124, 125, 126, 127, 162, 163, 164, 165, 166, 167, 202, 203, 215, 216, 228, 229, 241, 242, 254, 255, 267, 268, 269, 270, 271, 272, 346, 347, 348, 349, 350, 351, 425, 426, 427, 428, 429, 430, 504, 505, 517, 518, 530, 531, 543, 544, 563)]
f_data[[68]] <- key[match(f_data[[68]], key[[1]]), 2]

colnames(f_data) <- c('subjectId', 'tBodyAccMeanX', 'tBodyAccMeanY', 'tBodyAccMeanZ', 'tBodyAccStdX', 'tBodyAccStdY', 'tBodyAccStdZ', 'tGravityAccMeanX', 'tGravityAccMeanY', 'tGravityAccMeanZ', 'tGravityAccStdX', 'tGravityAccStdY', 'tGravityAccStdZ', 'tBodyAccJerkMeanX', 'tBodyAccJerkMeanY', 'tBodyAccJerkMeanZ', 'tBodyAccJerkStdX', 'tBodyAccJerkStdY', 'tBodyAccJerkStdZ', 'tBodyGyroMeanX', 'tBodyGyroMeanY', 'tBodyGyroMeanZ', 'tBodyGyroStdX', 'tBodyGyroStdY', 'tBodyGyroStdZ', 'tBodyGyroJerkMeanX', 'tBodyGyroJerkMeanY', 'tBodyGyroJerkMeanZ', 'tBodyGyroJerkStdX', 'tBodyGyroJerkStdY', 'tBodyGyroJerkStdZ', 'tBodyAccMagMean', 'tBodyAccMagStd', 'tGravityAccMagMean', 'tGravityAccMagStd', 'tBodyAccJerkMagMean', 'tBodyAccJerkMagStd', 'tBodyGyroMagMean', 'tBodyGyroMagStd', 'tBodyGyroJerkMagMean', 'tBodyGyroJerkMagStd', 'fBodyAccMeanX', 'fBodyAccMeanY', 'fBodyAccMeanZ', 'fBodyAccStdX', 'fBodyAccStdY', 'fBodyAccStdZ', 'fBodyAccJerkMeanX', 'fBodyAccJerkMeanY', 'fBodyAccJerkMeanZ', 'fBodyAccJerkStdX', 'fBodyAccJerkStdY', 'fBodyAccJerkStdZ', 'fBodyGyroMeanX', 'fBodyGyroMeanY', 'fBodyGyroMeanZ', 'fBodyGyroStdX', 'fBodyGyroStdY', 'fBodyGyroStdZ', 'fBodyAccMagMean', 'fBodyAccMagStd', 'fBodyBodyAccJerkMagMean', 'fBodyBodyAccJerkMagStd', 'fBodyBodyGyroMagMean', 'fBodyBodyGyroMagStd', 'fBodyBodyGyroJerkMagMean', 'fBodyBodyGyroJerkMagStd', 'activity')

rm('data1_x', 'data1_y', 'data1_s', 'data2_x', 'data2_y', 'data2_s', 'key', 'train', 'test', 'data')

library(dplyr)
subact <- f_data %>%
              group_by(subjectId, activity) %>%
                  summarise_all(mean)

write.table(subact, file = 'tidydata.txt', row.names = FALSE)