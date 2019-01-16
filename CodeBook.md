## Feature selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  

* 'Mean' is used to denote mean of all the values of the axial signal for a particular (subject,activity) combination.
* 'Std' is used to denote standard deviation of all the values of the axial signal for a particular (subject,activity) combination.
* 'MeanX' is used to denote mean of all the values of the axial signal in the X direction for a particular (subject,activity) combination.
* 'MeanY' is used to denote mean of all the values of the axial signal in the Y direction for a particular (subject,activity) combination.
* 'MeanZ' is used to denote mean of all the values of the axial signal in the Z direction for a particular (subject,activity) combination.
* 'StdX' is used to denote standard deviation of all the values of the axial signal in the X direction for a particular (subject,activity) combination.
* 'StdY' is used to denote standard deviation of all the values of the axial signal in the Y direction for a particular (subject,activity) combination.
* 'StdZ' is used to denote standard deviation of all the values of the axial signal in the Z direction for a particular (subject,activity) combination.

Axial signals:

* tBodyAccMeanX 
* tBodyAccMeanY 
* tBodyAccMeanZ 
* tBodyAccStdX 
* tBodyAccStdY 
* tBodyAccStdZ 
* tGravityAccMeanX 
* tGravityAccMeanY 
* tGravityAccMeanZ 
* tGravityAccStdX 
* tGravityAccStdY 
* tGravityAccStdZ 
* tBodyAccJerkMeanX 
* tBodyAccJerkMeanY 
* tBodyAccJerkMeanZ 
* tBodyAccJerkStdX 
* tBodyAccJerkStdY 
* tBodyAccJerkStdZ 
* tBodyGyroMeanX 
* tBodyGyroMeanY 
* tBodyGyroMeanZ 
* tBodyGyroStdX 
* tBodyGyroStdY 
* tBodyGyroStdZ 
* tBodyGyroJerkMeanX 
* tBodyGyroJerkMeanY 
* tBodyGyroJerkMeanZ 
* tBodyGyroJerkStdX 
* tBodyGyroJerkStdY 
* tBodyGyroJerkStdZ 
* tBodyAccMagMean 
* tBodyAccMagStd 
* tGravityAccMagMean 
* tGravityAccMagStd 
* tBodyAccJerkMagMean 
* tBodyAccJerkMagStd 
* tBodyGyroMagMean 
* tBodyGyroMagStd 
* tBodyGyroJerkMagMean 
* tBodyGyroJerkMagStd 
* fBodyAccMeanX 
* fBodyAccMeanY 
* fBodyAccMeanZ 
* fBodyAccStdX 
* fBodyAccStdY 
* fBodyAccStdZ 
* fBodyAccJerkMeanX 
* fBodyAccJerkMeanY 
* fBodyAccJerkMeanZ 
* fBodyAccJerkStdX 
* fBodyAccJerkStdY 
* fBodyAccJerkStdZ 
* fBodyGyroMeanX 
* fBodyGyroMeanY 
* fBodyGyroMeanZ 
* fBodyGyroStdX 
* fBodyGyroStdY 
* fBodyGyroStdZ 
* fBodyAccMagMean 
* fBodyAccMagStd 
* fBodyBodyAccJerkMagMean 
* fBodyBodyAccJerkMagStd 
* fBodyBodyGyroMagMean 
* fBodyBodyGyroMagStd 
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd

Other variables:

* subjectId - Identifier of the subject who performed the experiment (ranges from 1 through 30)
* activity - Name of the activity performed by the subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

#### Notes:
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.