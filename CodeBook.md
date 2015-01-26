# Code Book

##Original Data

The original data and its description can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking_upstairs, walking_downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
    
    The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 
    
    For each record in the dataset it is provided: 
    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
    - Triaxial Angular velocity from the gyroscope. 
    - A 561-feature vector with time and frequency domain variables. 
    - Its activity label. 
    - An identifier of the subject who carried out the experiment.

### Tidy Mean

The tidy mean data is written from run_analysis.R into a single ASCII text file, tidy_data.txt, The first line contains the column headers. Fields are deliniated by spaces. All text values are in double-quotes.

| Column                       | Original Name               |
| ---------------------------- | --------------------------- |
| subject_id                   |            -                |
| activity                     |            -                |
| timeBodyAccMeanX             | tBodyAcc-mean()-X           |
| timeBodyAccMeanY             | tBodyAcc-mean()-Y           |
| timeBodyAccMeanZ             | tBodyAcc-mean()-Z           |
| timeBodyAccStdX              | tBodyAcc-std()-X            |
| timeBodyAccStdY              | tBodyAcc-std()-Y            |
| timeBodyAccStdZ              | tBodyAcc-std()-Z            |
| timeGravityAccMeanX          | tGravityAcc-mean()-X        |
| timeGravityAccMeanY          | tGravityAcc-mean()-Y        |
| timeGravityAccMeanZ          | tGravityAcc-mean()-Z        |
| timeGravityAccStdX           | tGravityAcc-std()-X         |
| timeGravityAccStdY           | tGravityAcc-std()-Y         |
| timeGravityAccStdZ           | tGravityAcc-std()-Z         |
| timeBodyAccJerkMeanX         | tBodyAccJerk-mean()-X       |
| timeBodyAccJerkMeanY         | tBodyAccJerk-mean()-Y       |
| timeBodyAccJerkMeanZ         | tBodyAccJerk-mean()-Z       |
| timeBodyAccJerkStdX          | tBodyAccJerk-std()-X        |
| timeBodyAccJerkStdY          | tBodyAccJerk-std()-Y        |
| timeBodyAccJerkStdZ          | tBodyAccJerk-std()-Z        |
| timeBodyGyroMeanX            | tBodyGyro-mean()-X          |
| timeBodyGyroMeanY            | tBodyGyro-mean()-Y          |
| timeBodyGyroMeanZ            | tBodyGyro-mean()-Z          |
| timeBodyGyroStdX             | tBodyGyro-std()-X           |
| timeBodyGyroStdY             | tBodyGyro-std()-Y           |
| timeBodyGyroStdZ             | tBodyGyro-std()-Z           |
| timeBodyGyroJerkMeanX        | tBodyGyroJerk-mean()-X      |
| timeBodyGyroJerkMeanY        | tBodyGyroJerk-mean()-Y      |
| timeBodyGyroJerkMeanZ        | tBodyGyroJerk-mean()-Z      |
| timeBodyGyroJerkStdX         | tBodyGyroJerk-std()-X       |
| timeBodyGyroJerkStdY         | tBodyGyroJerk-std()-Y       |
| timeBodyGyroJerkStdZ         | tBodyGyroJerk-std()-Z       |
| timeBodyAccMagMean           | tBodyAccMag-mean()          |
| timeBodyAccMagStd            | tBodyAccMag-std()           |
| timeGravityAccMagMean        | tGravityAccMag-mean()       |
| timeGravityAccMagStd         | tGravityAccMag-std()        |
| timeBodyAccJerkMagMean       | tBodyAccJerkMag-mean()      |
| timeBodyAccJerkMagStd        | tBodyAccJerkMag-std()       |
| timeBodyGyroMagMean          | tBodyGyroMag-mean()         |
| timeBodyGyroMagStd           | tBodyGyroMag-std()          |
| timeBodyGyroJerkMagMean      | tBodyGyroJerkMag-mean()     |
| timeBodyGyroJerkMagStd       | tBodyGyroJerkMag-std()      |
| freqBodyAccMeanX             | fBodyAcc-mean()-X           |
| freqBodyAccMeanY             | fBodyAcc-mean()-Y           |
| freqBodyAccMeanZ             | fBodyAcc-mean()-Z           |
| freqBodyAccStdX              | fBodyAcc-std()-X            |
| freqBodyAccStdY              | fBodyAcc-std()-Y            |
| freqBodyAccStdZ              | fBodyAcc-std()-Z            |
| freqBodyAccJerkMeanX         | fBodyAccJerk-mean()-X       |
| freqBodyAccJerkMeanY         | fBodyAccJerk-mean()-Y       |
| freqBodyAccJerkMeanZ         | fBodyAccJerk-mean()-Z       |
| freqBodyAccJerkStdX          | fBodyAccJerk-std()-X        |
| freqBodyAccJerkStdY          | fBodyAccJerk-std()-Y        |
| freqBodyAccJerkStdZ          | fBodyAccJerk-std()-Z        |
| freqBodyGyroMeanX            | fBodyGyro-mean()-X          |
| freqBodyGyroMeanY            | fBodyGyro-mean()-Y          |
| freqBodyGyroMeanZ            | fBodyGyro-mean()-Z          |
| freqBodyGyroStdX             | fBodyGyro-std()-X           |
| freqBodyGyroStdY             | fBodyGyro-std()-Y           |
| freqBodyGyroStdZ             | fBodyGyro-std()-Z           |
| freqBodyAccMagMean           | fBodyAccMag-mean()          |
| freqBodyAccMagStd            | fBodyAccMag-std()           |
| freqBodyBodyAccJerkMagMean   | fBodyBodyAccJerkMag-mean()  |
| freqBodyBodyAccJerkMagStd    | fBodyBodyAccJerkMag-std()   |
| freqBodyBodyGyroMagMean      | fBodyBodyGyroMag-mean()     |
| freqBodyBodyGyroMagStd       | fBodyBodyGyroMag-std()      |
| freqBodyBodyGyroJerkMagMean  | fBodyBodyGyroJerkMag-mean() |
| freqBodyBodyGyroJerkMagStd   | fBodyBodyGyroJerkMag-std()  |

### Notes

Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
