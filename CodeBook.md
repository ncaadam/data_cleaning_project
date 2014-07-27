Code Book for assignment_data.txt
==================================
1. subject - INT - A unique id for each subject in the experiment
2. activity - CHAR - Descriptive variable describing which of 6 different activities the subject was doing when the data point was taken. The 6 activities are: *WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING*
3. For the rest of the variables, I've taken a piece out of the 'features_info.txt' file in the original data set. This explains what the rest of the variables consist of. Please read below.

<p> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
<br><br>
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
<br><br>
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
<br><br>
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<ul>
<li>tBodyAcc-XYZ</li>
<li>tGravityAcc-XYZ</li>
 <li>tBodyAccJerk-XYZ</li>
 <li>tBodyGyro-XYZ</li>
 <li>tBodyGyroJerk-XYZ</li>
 <li>tBodyAccMag</li>
 <li>tGravityAccMag</li>
 <li>tBodyAccJerkMag</li>
 <li>tBodyGyroMag</li>
 <li>tBodyGyroJerkMag</li>
 <li>fBodyAcc-XYZ</li>
 <li>fBodyAccJerk-XYZ</li>
 <li>fBodyGyro-XYZ</li>
 <li>fBodyAccMag</li>
 <li>fBodyAccJerkMag</li>
 <li>fBodyGyroMag</li>
 <li>fBodyGyroJerkMag</li>
</ul>
<br>
The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
<br><br>
The complete list of variables of each feature vector is available in 'features.txt'
</p>
