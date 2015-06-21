#Accelerometer data project codebook

This codebook contains information about how the study was conducted, how data were processed and a description of the variables in the tidy data set. 

## Study design and data acquisition 

Note that extensive details on the project design can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) as well as within the [.zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) in the `./Readme.txt` file as described by the authors. Briefly, 30 volunteers aged 19-48 performed six activities (walking, walking upstairs, walking downstairs, sitting, standing and laying) while wearing a Samsung Galaxy S II on the waist. Using its accelerometer and gyroscope, acceleration and angular velocity for each axis (X, Y, Z) were obtained at a 50Hz sampling frequency. Two data sets were created: a training data set containing the data from 70% of the volunteers and a test set with the remaining 30%.

## Processing by the authors

In the original download link, authors describe the following processing:

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain

Also, the variables created reflect the author´s processing as follows:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

> - tBodyAcc-XYZ
> - tGravityAcc-XYZ
> - tBodyAccJerk-XYZ
> - tBodyGyro-XYZ
> - tBodyGyroJerk-XYZ
> - tBodyAccMag
> - tGravityAccMag
> - tBodyAccJerkMag
> - tBodyGyroMag
> - tBodyGyroJerkMag
> - fBodyAcc-XYZ
> - fBodyAccJerk-XYZ
> - fBodyGyro-XYZ
> - fBodyAccMag
> - fBodyAccJerkMag
> - fBodyGyroMag
> - fBodyGyroJerkMag

> The set of variables that were estimated from these signals are: 

> - mean(): Mean value
> - std(): Standard deviation
> - mad(): Median absolute deviation 
> - max(): Largest value in array
> - min(): Smallest value in array
> - sma(): Signal magnitude area
> - energy(): Energy measure. Sum of the squares divided by the number of values. 
> - iqr(): Interquartile range 
> - entropy(): Signal entropy
> - arCoeff(): Autorregresion coefficients with Burg order equal to 4
> - correlation(): correlation coefficient between two signals
> - maxInds(): index of the frequency component with largest magnitude
> - meanFreq(): Weighted average of the frequency components to obtain a mean frequency
> - skewness(): skewness of the frequency domain signal 
> - kurtosis(): kurtosis of the frequency domain signal 
> - bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
> - angle(): Angle between to vectors.

> Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable: gravityMean, tBodyAccMean
> tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean.
> - Anguita *et al*, 2013 . Please view full reference in the bottom of the README.md file.

## Additional processing by the code in this repository

As instructed, the following changes were made to the variables:

1. Only variables containing mean and standard deviation were kept, (*i.e.* those containing `mean()` and `std()`).
2. Spaces in the variable names were changed to underscores (`_`) and parentheses removed. Variable names were switched to lower case. 
3. The tidy data set contains the mean of each of these variables (the mean of the mean and the mean of the standard deviation) calculated for each activity and participant.

The full variable description can be found in the following table:

Number | Name | Description | Units
---|---|---|---
1| subject | Number assigned to each subject from 1-30 | Does not apply
2| activity | Name of activity from: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING. | Does not apply 
3| tbodyacc_mean_x| The mean of the filtered body acceleration signal in the x axis in the time domain| Normalized and bounded within [-1,1]
4| tbodyacc_mean_y| The mean of the filtered body acceleration signal in the y axis in the time domain| Normalized and bounded within [-1,1]
5| tbodyacc_mean_z| The mean of the filtered body acceleration signal in the z axis in the time domain| Normalized and bounded within [-1,1]
6| tbodyacc_std_x| The standard deviation of the filtered body acceleration signal in the x axis in the time domain| Normalized and bounded within [-1,1]
7| tbodyacc_std_y| The standard deviation of the filtered body acceleration signal in the y axis in the time domain| Normalized and bounded within [-1,1]
8| tbodyacc_std_z| The standard deviation of the filtered body acceleration signal in the z axis in the time domain| Normalized and bounded within [-1,1]
9| tgravityacc_mean_x| The mean of the filtered gravity acceleration signal in the x axis in the time domain| Normalized and bounded within [-1,1]
10| tgravityacc_mean_y| The mean of the filtered gravity acceleration signal in the y axis in the time domain| Normalized and bounded within [-1,1]
11| tgravityacc_mean_z| The mean of the filtered gravity acceleration signal in the z axis in the time domain| Normalized and bounded within [-1,1]
12| tgravityacc_std_x| The standard deviation of the filtered gravity acceleration signal in the x axis in the time domain| Normalized and bounded within [-1,1]
13| tgravityacc_std_y| The standard deviation of the filtered gravity acceleration signal in the y axis in the time domain| Normalized and bounded within [-1,1]
14| tgravityacc_std_z| The standard deviation of the filtered gravity acceleration signal in the z axis in the time domain| Normalized and bounded within [-1,1]
15| tbodyaccjerk_mean_x|  The mean of the derivative of the filtered body acceleration signal (jerk) in the x axis in the time domain| Normalized and bounded within [-1,1]
16| tbodyaccjerk_mean_y|  The mean of the derivative of the filtered body acceleration signal (jerk) in the y axis in the time domain| Normalized and bounded within [-1,1]
17| tbodyaccjerk_mean_z|  The mean of the derivative of the filtered body acceleration signal (jerk) in the z axis in the time domain| Normalized and bounded within [-1,1]
18| tbodyaccjerk_std_x| The standard deviation of the derivative of the filtered body acceleration signal (jerk) in the x axis in the time domain| Normalized and bounded within [-1,1]
19| tbodyaccjerk_std_y| The standard deviation of the derivative of the filtered body acceleration signal (jerk) in the y axis in the time domain| Normalized and bounded within [-1,1]
20| tbodyaccjerk_std_z| The standard deviation of the derivative of the filtered body acceleration signal (jerk) in the z axis in the time domain| Normalized and bounded within [-1,1]
21| tbodygyro_mean_x| The mean of the filtered body gyroscope signal in the x axis in the time domain| Normalized and bounded within [-1,1]
22| tbodygyro_mean_y| The mean of the filtered body gyroscope signal in the y axis in the time domain| Normalized and bounded within [-1,1]
23| tbodygyro_mean_z| The mean of the filtered body gyroscope signal in the z axis in the time domain| Normalized and bounded within [-1,1]
24| tbodygyro_std_x| The standard deviation of the filtered body gyroscope signal in the x axis in the time domain| Normalized and bounded within [-1,1]
25| tbodygyro_std_y| The standard deviation of the filtered body gyroscope signal in the y axis in the time domain| Normalized and bounded within [-1,1]
26| tbodygyro_std_z| The standard deviation of the filtered body gyroscope signal in the z axis in the time domain| Normalized and bounded within [-1,1]
27| tbodygyrojerk_mean_x|  The mean of the derivative of the filtered body gyroscope signal (jerk) in the x axis in the time domain| Normalized and bounded within [-1,1]
28| tbodygyrojerk_mean_y|  The mean of the derivative of the filtered body gyroscope signal (jerk) in the y axis in the time domain| Normalized and bounded within [-1,1]
29| tbodygyrojerk_mean_z|  The mean of the derivative of the filtered body gyroscope signal (jerk) in the z axis in the time domain| Normalized and bounded within [-1,1]
30| tbodygyrojerk_std_x|  The standard deviation of the derivative of the filtered body gyroscope signal (jerk) in the x axis in the time domain| Normalized and bounded within [-1,1]
31| tbodygyrojerk_std_y|  The standard deviation of the derivative of the filtered body gyroscope signal (jerk) in the y axis in the time domain| Normalized and bounded within [-1,1]
32| tbodygyrojerk_std_z|  The standard deviation of the derivative of the filtered body gyroscope signal (jerk) in the z axis in the time domain| Normalized and bounded within [-1,1]
33| tbodyaccmag_mean| The mean of the magnitude (calculated using the Euclidean norm) of the filtered body acceleration signal in the time domain|
34| tbodyaccmag_std| The standard deviation of the magnitude (calculated using the Euclidean norm) of the filtered body acceleration signal in the time domain| Normalized and bounded within [-1,1]
35| tgravityaccmag_mean|  The mean of the magnitude (calculated using the Euclidean norm) of the filtered body acceleration gravity signal in the time domain| Normalized and bounded within [-1,1]
36| tgravityaccmag_std|  The standard deviation of the magnitude (calculated using the Euclidean norm) of the filtered gravity acceleration signal in the time domain| Normalized and bounded within [-1,1]
37| tbodyaccjerkmag_mean| The mean of the magnitude (calculated using the Euclidean norm) of the derivative of the filtered body acceleration (Jerk) signal in the time domain| Normalized and bounded within [-1,1]
38| tbodyaccjerkmag_std| The standard deviation of the magnitude (calculated using the Euclidean norm) of the derivative of the filtered body acceleration (Jerk) signal in the time domain| Normalized and bounded within [-1,1]
39| tbodygyromag_mean| The mean of the magnitude (calculated using the Euclidean norm) of the filtered gyroscope signal in the time domain|
40| tbodygyromag_std| The standard deviation of the magnitude (calculated using the Euclidean norm) of the filtered gyroscope signal in the time domain| Normalized and bounded within [-1,1]
41| tbodygyrojerkmag_mean| The mean of the magnitude (calculated using the Euclidean norm) of the derivative of the filtered gyroscope (Jerk) signal in the time domain| Normalized and bounded within [-1,1]
42| tbodygyrojerkmag_std| The standard deviation of the magnitude (calculated using the Euclidean norm) of the derivative of the filtered gyroscope (Jerk) signal in the time domain| Normalized and bounded within [-1,1]
43| fbodyacc_mean_x| The mean of the filtered body acceleration signal in the x axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
44| fbodyacc_mean_y| The mean of the filtered body acceleration signal in the y axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
45| fbodyacc_mean_z| The mean of the filtered body acceleration signal in the z axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
46| fbodyacc_std_x| The standard deviation of the filtered body acceleration signal in the x axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
47| fbodyacc_std_y| The standard deviation of the filtered body acceleration signal in the y axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
48| fbodyacc_std_z| The standard deviation of the filtered body acceleration signal in the z axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
49| fbodyaccjerk_mean_x| The mean of the derivative of the filtered body acceleration (Jerk) signal in the x axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
50| fbodyaccjerk_mean_y| The mean of the derivative of the filtered body acceleration (Jerk) signal in the y axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
51| fbodyaccjerk_mean_z| The mean of the derivative of the filtered body acceleration (Jerk) signal in the z axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
52| fbodyaccjerk_std_x| The standard deviation of the derivative of the filtered body acceleration (Jerk) signal in the x axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
53| fbodyaccjerk_std_y| The standard deviation of the derivative of the filtered body acceleration (Jerk) signal in the y axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
54| fbodyaccjerk_std_z| The standard deviation of the derivative of the filtered body acceleration (Jerk) signal in the z axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
55| fbodygyro_mean_x| The mean of the filtered body gyroscope signal in the x axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
56| fbodygyro_mean_y| The mean of the filtered body gyroscope signal in the y axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
57| fbodygyro_mean_z| The mean of the filtered body gyroscope signal in the z axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
58| fbodygyro_std_x| The standard deviation of the filtered body gyroscope signal in the x axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
59| fbodygyro_std_y| The standard deviation of the filtered body gyroscope signal in the y axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
60| fbodygyro_std_z| The standard deviation of the filtered body gyroscope signal in the z axis in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
61| fbodyaccmag_mean| The mean of the magnitude (calculated using the Euclidean norm) of the filtered body acceleration signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
62| fbodyaccmag_std| The standard deviation of the magnitude (calculated using the Euclidean norm) of the filtered body acceleration signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
63| fbodybodyaccjerkmag_mean| The mean of the magnitude (calculated using the Euclidean norm) of the derivative of the filtered body acceleration (Jerk) signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
64| fbodybodyaccjerkmag_std| The standard deviation of the magnitude (calculated using the Euclidean norm) of the derivative of the filtered body acceleration (Jerk) signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
65| fbodybodygyromag_mean| The mean of the magnitude (calculated using the Euclidean norm) of the filtered body gyroscope signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)|  Normalized and bounded within [-1,1]
66| fbodybodygyromag_std| The standard deviation of the magnitude (calculated using the Euclidean norm) of the filtered body gyroscope signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
67| fbodybodygyrojerkmag_mean| The mean of the magnitude (calculated with the Euclidean norm)  of the derivative of the filtered body gyroscope (Jerk) signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]
68| fbodybodygyrojerkmag_std| The standard deviation of the magnitude (calculated with the Euclidean norm) of the derivative of the filtered body gyroscope (Jerk) signal in the frequency domain (obtained with applying a Fast Fourier Transform to the time domain signal)| Normalized and bounded within [-1,1]

