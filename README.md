# Getting and cleaning data - Project

#### Steps carried out in the analysis

1. Download the zipped dataset to the working directory.
2. Unzip the dataset in the working directory.
3. Read the X_train, y_train, subject_train, X_test, y_test, subject_test and activity_label files.
4. Merge the X_train, y_train and subject_train dataframes using cbind and store as a new dataframe, say, train.
5. Merge the X_test, y_test and subject_test dataframes using cbind and store as a new dataframe, say, test.
6. Merge the train and test dataframes using rbind and store as a new dataframe, say, data.
7. Subset the necessary columns from the dataframe 'data'.
8. Use match() function to replace activity ids with activity names.
9. Rename the variables using the colnames() function.
10. Using dplyr's group_by() and summarise_all() functions calculate the mean of all variables for each (subject,activity) combination.
11. Write the final tidy dataset to a text file using write.table() function.

#### Dependencies
dplyr package

#### Steps to run the code
Run `run_analysis.R`

Dataset Url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip