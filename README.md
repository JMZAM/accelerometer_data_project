# Accelerometer data project

### I. Introduction



The purpose of this project is to collect and clean a data set. The data used are smartphone accelerometer data collected by Anguita *et al*. Accordingly, this repository contains the following files:

- **README.md**: This markdown file describes the files within the repository and overviews the R script. It also contains the references used in this project.
- **CodeBook.md**: This markdown file contains information about how the study was conducted, how data were processed and a description of the variables in the tidy data set. 
- **run_analysis.R**: this file contains the R code that can be used to load the data into R and create a tidy data set. More details can be found in the description below and in the comments in the code.

### II. **run_analysis.R** Overview



This script is divided into two sections, as follows:

#### Section I: loading the data

In this section, the data are loaded into R. This is the [download link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for the data, and the original data with more details can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). Note that if data are already in the working directory, step 2 can be skipped (though it is assumed that a folder called `UCI HAR Dataset` is present in the working directory and the other folders and file names are unchanged as when originally downloaded). The following steps are taken in this section:

1. Required packages are loaded and attached into R. These will be used at the end of section II but are downloaded first of all for organization purposes - mainly because I am used to doing this step before writing any more code.
2. The data are downloaded and unzipped.
3. The test and training set and activities are loaded into R.


#### Section II: creating a tidy data file

In this section, with the data loaded into R, the following steps are taken:

1. The training and test sets are merged into a single data set.
2. The variable names are set, giving descriptive variable names instead of generic V1, V2, V3, etc. that result from the original reading of the data. 
3. Only the mean and standard deviation for each measurement are extracted. This is carried out by taking advantage of the notation used when creating the variables, described in the `./UCI HAR Dataset/features_info.txt` file and in the codebook in this file. 
4. The activity names are changed from numbers (1-6) to descriptive names. The results are stored in the Activity variable.
5. An tidy independent data set is created with the average of each variable for each subject and activity.

### III: References



Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.