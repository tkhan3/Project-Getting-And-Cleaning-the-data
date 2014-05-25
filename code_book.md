##			Code Book For Human Activity Recognition Using Smartphones Dataset

#####====================================================
####Features Selection:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals Time Domain Signal for Accelarometer-XYZ and Time Domain Singal for Gyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals Time Domain Signal for Accelarometer-XYZ and Time order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals Time domain signal BodyAccelrometer-XYZ and time_domian_signal GravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

====================================================

#####Features Details:
When variables is suffixed by -X it says measure ment is taken in X directions. When it is suffixed as -X,it means there are multiple readings. Code contains description of variables which were selected to calculate of mean of each activity performed by a subject.

*subject_id
Contains id of the subject who participated in the the experiment. Value ranges from 1 to 30.

*activity_id
Contains id of the activity perfoemd by each subject who perfomed the experiment. Value ranges from 1 to 30.

*activity_names
Contains description of activity names. Like walking, standing etc.

*Time_Domain_Sig_Accelarometer_mean__X
Mean of Time Domain Signal Body Accelrometer measurement taken from Accelarometer in direction X.

*Time_Domain_Sig_Accelarometer_mean__Y
Mean of Time Domain Signal Body Accelrometer measurement taken from Accelarometer in direction Y.

*Time_Domain_Sig_Accelarometer_mean__Z
Mean of Time Domain Signal Body Accelrometer measurement taken from Accelarometer in direction Z.

*Time_Domain_Sig_Accelarometer_std__X
Standard Deviation of Time Domain Signal Body Accelrometer measurement taken from Accelarometer in direction X.

*Time_Domain_Sig_Accelarometer_std__Y
Standard Deviation of Time Domain Signal Body Accelrometer measurement taken from Accelarometer in direction Y.

*Time_Domain_Sig_Accelarometer_std__Z
Mean of Standard Deviation of Time Domain Signal Body Accelrometer measurement taken from Accelarometer in direction Z.

*Time_Domain_SigAcc_mean__X
Mean of Overall Accelaroemeter measurement in direction X.

*Time_Domain_SigAcc_mean__Y
Mean of Overall Accelaroemeter measurement in direction Y.

*Time_Domain_SigAcc_mean__Z
Mean of Overall Accelaroemeter measurement in direction Z.

*Time_Domain_SigAcc_std__X
Standard Deviation of Overall Accelaroemeter measurement in direction X.

*Time_Domain_SigAcc_std__Y
Standard Deviation of Overall Accelaroemeter measurement in direction Y.

*Time_Domain_SigAcc_std__Z
Standard Deviaion of Overall Accelaroemeter measurement in directionin direction Z.

*Time_Domain_Sig_AccelarometerJerk_mean__X
Mean of Overall Accelaroemeter Jerk measurement in direction X.

*Time_Domain_Sig_AccelarometerJerk_mean__Y
Mean of Overall Accelaroemeter Jerk measurement in direction Y.

*Time_Domain_Sig_AccelarometerJerk_mean__Z
Mean of Overall Accelaroemeter Jerk measurement in direction Z.

*Time_Domain_Sig_AccelarometerJerk_std__X
Standard Deviation of Overall Accelaroemeter Jerk measurement in direction X.

*Time_Domain_Sig_AccelarometerJerk_std__Y
Standard Deviation of Overall Accelaroemeter Jerk measurement in direction Y.

*Time_Domain_Sig_AccelarometerJerk_std__Z
Standard Deviation of Overall Accelaroemeter Jerk measurement in direction Z.

*Time_Domain_Sig_Gyrometer_mean__X
Mean Gyroemeter measurement in direction X.

*Time_Domain_Sig_Gyrometer_mean__Y
Mean Gyroemeter Jerk measurement in direction Y.

*Time_Domain_Sig_Gyrometer_mean__Z
Mean Gyroemeter measurement in direction Z.

*Time_Domain_Sig_Gyrometer_std__X
Standard deviation of Gyroemeter measurement in direction X.

*Time_Domain_Sig_Gyrometer_std__Y
Standard deviation of Gyroemeter measurement in direction X.

*Time_Domain_Sig_Gyrometer_std__Z
Standard deviation of Gyroemeter measurement in direction Z.

*Time_Domain_Sig_GyrometerJerk_mean__X
Mean of Gyroemeter Jerk measurement in direction X.

*Time_Domain_Sig_GyrometerJerk_mean__Y
Mean of Gyroemeter Jerk measurement in direction Y.

*Time_Domain_Sig_GyrometerJerk_mean__Z
Mean of Gyroemeter Jerk measurement in direction Z.

*Time_Domain_Sig_GyrometerJerk_std__X
Standard Deviation of Gyroemeter Jerk measurement in direction X.

*Time_Domain_Sig_GyrometerJerk_std__Y
Standard Deviation of Gyroemeter Jerk measurement in direction Y.

*Time_Domain_Sig_GyrometerJerk_std__Z
Standard Deviation of Gyroemeter Jerk measurement in direction Z.

*Time_Domain_Sig_AccelarometerMag_mean_
Mean of Accelarometer Maginutde measurement in direction X.

*Time_Domain_Sig_AccelarometerMag_std_
Standard Deviation of Accelarometer Maginutde measurement in direction X.

*Time_Domain_SigAccMag_mean_
OVerall Mean of Accelarometer Maginutde measurement in all directions.

*Time_Domain_SigAccMag_std_
Overall Standard Deviation Accelarometer Maginutde measurement in all directions.

*Time_Domain_Sig_AccelarometerJerkMag_mean_
Overall Mean of Accelarometer Jerk Maginutde measurement in all directions.

*Time_Domain_Sig_AccelarometerJerkMag_std_
Overall Standard Deviation Accelarometer Jerk Maginutde measurement in all directions.

*Time_Domain_Sig_Gyrometer_Magnitude_mean_
Overall Mean of Gyrometer Maginutde measurement in all directions.

*Time_Domain_Sig_Gyrometer_Magnitude_std_
Overall Standard Deviation of of Gyrometer Maginutde measurement in all directions.

*Time_Domain_Sig_Gyrometer_Jerk_Magnitude_mean_
Overall Mean of of Gyrometer Jerk Maginutde measurement in all directions.

*Time_Domain_Sig_Gyrometer_Jerk_Magnitude_std_
Overall Standard of of Gyrometer Jerk Maginutde measurement in all directions.

*Freq_Domain_Sig_Accelarometer_mean__X
Mean of Frequency Domain Signal accelarometer measurement in direction X.

*Freq_Domain_Sig_Accelarometer_mean__Y
Mean of Frequency Domain Signal accelarometer measurement in direction Y.

*Freq_Domain_Sig_Accelarometer_mean__Z
Mean of Frequency Domain Signal accelarometer measurement in direction Z.

*Freq_Domain_Sig_Accelarometer_std__X
Standard Deviation of Frequency Domain Signal accelarometer measurement in direction X.

*Freq_Domain_Sig_Accelarometer_std__Y
Standard Deviation of Frequency Domain Signal accelarometer measurement in direction Y.

*Freq_Domain_Sig_Accelarometer_std__Z
Standard Deviation of Frequency Domain Signal accelarometer measurement in direction Z.

*Freq_Domain_Sig_Accelarometer_meanFreq__X
Standard Deviation of Frequency Domain Signal accelarometer mean frequency measurement in direction X.

*Freq_Domain_Sig_Accelarometer_meanFreq__Y
Standard Deviation of Frequency Domain Signal accelarometer mean frequency measurement in direction Y.

*Freq_Domain_Sig_Accelarometer_meanFreq__Z
Standard Deviation of Frequency Domain Signal accelarometer mean frequency measurement in direction Z.

*Freq_Domain_Sig_AccelarometerJerk_mean__X
Mean of Frequency Domain Signal accelarometer jerk measurement in direction X.

Freq_Domain_Sig_AccelarometerJerk_mean__Y
Mean of Frequency Domain Signal accelarometer jerk measurement in direction Y.

Freq_Domain_Sig_AccelarometerJerk_mean__Z
Mean of Frequency Domain Signal accelarometer jerk measurement in direction Z.


*Freq_Domain_Sig_AccelarometerJerk_std__X
Standard Deviation of Frequency Domain Signal accelarometer jerk measurement in direction X.

*Freq_Domain_Sig_AccelarometerJerk_std__Y
Standard Deviation of Frequency Domain Signal accelarometer jerk measurement in direction Y.

*Freq_Domain_Sig_AccelarometerJerk_std__Z
Standard Deviation of Frequency Domain Signal accelarometer jerk measurement in direction Z.

*Freq_Domain_Sig_AccelarometerJerk_meanFreq__X
Mean of Frequency Domain Signal Accelarometer measurement of Mean frequency in direction X.

*Freq_Domain_Sig_AccelarometerJerk_meanFreq__Y
Mean of Frequency Domain Signal Accelarometer measurement of Mean frequency in direction Y.

*Freq_Domain_Sig_AccelarometerJerk_meanFreq__Z
Mean of Frequency Domain Signal Accelarometer measurement of Mean frequency in direction Z.

*Freq_Domain_Sig_Gyrometer_mean__X
Mean of Frequency Domain Signal Gyrometer measurement in direction X.

*Freq_Domain_Sig_Gyrometer_mean__Y
Mean of Frequency Domain Signal Gyrometer measurement in direction Y.

*Freq_Domain_Sig_Gyrometer_mean__Z
Mean of Frequency Domain Signal Gyrometer measurement in direction Z.

*Freq_Domain_Sig_Gyrometer_std__X
Standard Deviation of Frequency Domain Signal Gyrometer measurement in direction X.

*Freq_Domain_Sig_Gyrometer_std__Y
Standard Deviation of Frequency Domain Signal Gyrometer measurement in direction Y.

*Freq_Domain_Sig_Gyrometer_std__Z
Standard Deviation of Frequency Domain Signal Gyrometer measurement in direction Z.

*Freq_Domain_Sig_Gyrometer_meanFreq__X
Mean of Frequency Domain Signal Gyrometer mean frequency measurement in direction X.

*Freq_Domain_Sig_Gyrometer_meanFreq__Y
Mean of Frequency Domain Signal Gyrometer mean frequency measurement in direction Y.

*Freq_Domain_Sig_Gyrometer_meanFreq__Z
Mean of Frequency Domain Signal Gyrometer mean frequency measurement in direction Z.

*Freq_Domain_Sig_AccelarometerMag_mean_
OVerall Mean of frequency domain signal accelarometer magnitude.

*Freq_Domain_Sig_AccelarometerMag_std_
Overall Mean of frequency domain signal accelarometer magnitude.

*Freq_Domain_Sig_AccelarometerMag_meanFreq_
Overall Mean of of frequency domain signal accelarometer magnitude

*Freq_Domain_Sig_Body_AccelarometerJerkMag_mean_
Overall mean of frequnecy domain signal accelarometer jerk magnitude mean.

*Freq_Domain_Sig_Body_AccelarometerJerkMag_std_
Overall standard deviation of frequnecy domain signal accelarometer jerk magnitude mean.

*Freq_Domain_Sig_Body_AccelarometerJerkMag_meanFreq_
Overall Mean of frequnecy domain signal accelarometer jerk magnitude mean.

*Freq_Domain_Sig_Body_Gyrometer_Magnitude_mean_
OVerall Mean of frequnecy domain signal Gyrometer jerk magnitude mean.

*Freq_Domain_Sig_Body_Gyrometer_Magnitude_std_
OVerall Standard Deviation of frequnecy domain signal Gyrometer.

*Freq_Domain_Sig_Body_Gyrometer_Magnitude_meanFreq_
OVerall Mean of fequnecy domain signal Gyrometer.

*Freq_Domain_Sig_Body_Gyrometer_Jerk_Magnitude_mean_
OVerall Mean of fequnecy domain signal Gyrometer jerk magintude measurement.

*Freq_Domain_Sig_Body_Gyrometer_Jerk_Magnitude_std_
OVerall Standard Deviation of fequnecy domain signal Gyrometer jerk magintude measurement.


*Freq_Domain_Sig_Body_Gyrometer_Jerk_Magnitude_meanFreq_
OVerall Standard Deviation of fequnecy domain signal Gyrometer jerk magintude mean frequency measurement.

*angle.Time_Domain_Sig_AccelarometerMean.gravity.
Angle between measurement of Time Domain Signal's mean Accelarometer's Mean and Gravity Measurement.

*angle.Time_Domain_Sig_AccelarometerJerkMean..gravityMean.
Angle between measurement of Time Domain Signal's mean Accelarometer's Jerk Mean and Gravity Measurement.

*angle.Time_Domain_Sig_GyrometerMean.gravityMean.
Angle between measurement of Time Domain Signal's mean Gyrometer's Mean and Gravity Measurement.

*angle.Time_Domain_Sig_GyrometerJerkMean.gravityMean.
Angle between measurement of Time Domain Signal's mean Gyrometer's Jerk Mean and Gravity Measurement.

*angle.X.gravityMean.
Angle between direction X's gravity mean.


*angle.Y.gravityMean.
Angle between direction Y's gravity mean.

*angle.Z.gravityMean.
Angle between direction Z's gravity mean.