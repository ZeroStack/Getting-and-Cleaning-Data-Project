## Code Book

For the provided UCI HAR Dataset the following vars are set from run_analysis.R.  Please see the README.md for additional details.

### Tidy Mean

A data.table named `tidy.mean` is set with the following columns.  All units are maintained from the original data set. The run_analysis creates text file 'tidy_mean.txt from the tidy.mean variable.

| column       | description                                              | type    |
| ------------ | -------------------------------------------------------- | ------- |
| Subject      | Identifier of the subject                                | integer |
| Activity     | Label of the activity                                    | factor  |
| MeanSamples  | Mean of variables by Subject + Activity provided in tidy | numeric |

### Tidy

A data.table named `selectedData` is set with the following columns.  All units are maintained from the original data set. 

| Column                       | Original Name               |
| ---------------------------- | --------------------------- |
| Time.BodyAccelerometer.Mean.X          | tBodyAcc-mean()-X           |
| Time.BodyAcclerometer.Mean.Y          | tBodyAcc-mean()-Y           |
| Time.BodyAcclerometer.Mean.Z          | tBodyAcc-mean()-Z           |
| Time.BodyAcclerometer.Std.X           | tBodyAcc-std()-X            |
| Time.BodyAcclerometer.Std.Y           | tBodyAcc-std()-Y            |
| Time.BodyAcclerometer.Std.Z           | tBodyAcc-std()-Z            |
| Time.GravityAcclerometer.Mean.X       | tGravityAcc-mean()-X        |
| Time.GravityAcclerometer.Mean.Y       | tGravityAcc-mean()-Y        |
| Time.GravityAcclerometer.Mean.Z       | tGravityAcc-mean()-Z        |
| Time.GravityAcclerometer.Std.X        | tGravityAcc-std()-X         |
| Time.GravityAcclerometer.Std.Y        | tGravityAcc-std()-Y         |
| Time.GravityAcclerometer.Std.Z        | tGravityAcc-std()-Z         |
| Time.BodyAcclerometerJerk.Mean.X      | tBodyAccJerk-mean()-X       |
| Time.BodyAcclerometerJerk.Mean.Y      | tBodyAccJerk-mean()-Y       |
| Time.BodyAcclerometerJerk.Mean.Z      | tBodyAccJerk-mean()-Z       |
| Time.BodyAcclerometerJerk.Std.X       | tBodyAccJerk-std()-X        |
| Time.BodyAcclerometerJerk.Std.Y       | tBodyAccJerk-std()-Y        |
| Time.BodyAcclerometerJerk.Std.Z       | tBodyAccJerk-std()-Z        |
| Time.BodyGyroscope.Mean.X             | tBodyGyro-mean()-X          |
| Time.BodyGyroscope.Mean.Y             | tBodyGyro-mean()-Y          |
| Time.BodyGyroscope.Mean.Z             | tBodyGyro-mean()-Z          |
| Time.BodyGyroscope.Std.X              | tBodyGyro-std()-X           |
| Time.BodyGyroscope.Std.Y              | tBodyGyro-std()-Y           |
| Time.BodyGyroscope.Std.Z              | tBodyGyro-std()-Z           |
| Time.BodyGyroscopeJerk.Mean.X         | tBodyGyroJerk-mean()-X      |
| Time.BodyGyroscopeJerk.Mean.Y         | tBodyGyroJerk-mean()-Y      |
| Time.BodyGyroscopeJerk.Mean.Z         | tBodyGyroJerk-mean()-Z      |
| Time.BodyGyroscopeJerk.Std.X          | tBodyGyroJerk-std()-X       |
| Time.BodyGyroscopeJerk.Std.Y          | tBodyGyroJerk-std()-Y       |
| Time.BodyGyroscopeJerk.Std.Z          | tBodyGyroJerk-std()-Z       |
| Time.BodyAccelerometerMagnitude.Mean         | tBodyAccMag-mean()          |
| Time.BodyAccelerometerMagnitude.Std          | tBodyAccMag-std()           |
| Time.GravityAccelerometerMagnitude.Mean      | tGravityAccMag-mean()       |
| Time.GravityAccelerometerMagnitude.Std       | tGravityAccMag-std()        |
| Time.BodyAccelerometerJerkMagnitude.Mean     | tBodyAccJerkMag-mean()      |
| Time.BodyAccelerometerJerkMagnitude.Std      | tBodyAccJerkMag-std()       |
| Time.BodyGyroscopeMagnitude.Mean        | tBodyGyroMag-mean()         |
| Time.BodyGyroscopeMagnitude.Std         | tBodyGyroMag-std()          |
| Time.BodyGyroscopeJerkMagnitude.Mean    | tBodyGyroJerkMag-mean()     |
| Time.BodyGyroscopeJerkMagnitude.Std     | tBodyGyroJerkMag-std()      |
| FFT.BodyAccelerometer.Mean.X           | fBodyAcc-mean()-X           |
| FFT.BodyAccelerometer.Mean.Y           | fBodyAcc-mean()-Y           |
| FFT.BodyAccelerometer.Mean.Z           | fBodyAcc-mean()-Z           |
| FFT.BodyAccelerometer.Std.X            | fBodyAcc-std()-X            |
| FFT.BodyAccelerometer.Std.Y            | fBodyAcc-std()-Y            |
| FFT.BodyAccelerometer.Std.Z            | fBodyAcc-std()-Z            |
| FFT.BodyAccelerometerJerk.Mean.X       | fBodyAccJerk-mean()-X       |
| FFT.BodyAccelerometerJerk.Mean.Y       | fBodyAccJerk-mean()-Y       |
| FFT.BodyAccelerometerJerk.Mean.Z       | fBodyAccJerk-mean()-Z       |
| FFT.BodyAccelerometerJerk.Std.X        | fBodyAccJerk-std()-X        |
| FFT.BodyAccelerometerJerk.Std.Y        | fBodyAccJerk-std()-Y        |
| FFT.BodyAccelerometerJerk.Std.Z        | fBodyAccJerk-std()-Z        |
| FFT.BodyGyroscope.Mean.X          | fBodyGyro-mean()-X          |
| FFT.BodyGyroscope.Mean.Y          | fBodyGyro-mean()-Y          |
| FFT.BodyGyroscope.Mean.Z          | fBodyGyro-mean()-Z          |
| FFT.BodyGyroscope.Std.X           | fBodyGyro-std()-X           |
| FFT.BodyGyroscope.Std.Y           | fBodyGyro-std()-Y           |
| FFT.BodyGyroscope.Std.Z           | fBodyGyro-std()-Z           |
| FFT.BodyAccelerometerMagnitude.Mean          | fBodyAccMag-mean()          |
| FFT.BodyAccelerometerMagnitude.Std           | fBodyAccMag-std()           |
| FFT.BodyAccelerometerJerkMagnitude.Mean  | fBodyBodyAccJerkMag-mean()  |
| FFT.BodyAccelerometerJerkMagnitude.Std   | fBodyBodyAccJerkMag-std()   |
| FFT.BodyGyroscopeMagnitude.Mean     | fBodyBodyGyroMag-mean()     |
| FFT.BodyGyroscopeMagnitude.Std      | fBodyBodyGyroMag-std()      |
| FFT.BodyGyroscopeJerkMagnitude.Mean | fBodyBodyGyroJerkMag-mean() |
| FFT.BodyGyroscopeJerkMagnitude.Std  | fBodyBodyGyroJerkMag-std()  |
| subjects       |       |
| activity       |       |
### Notes

Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.