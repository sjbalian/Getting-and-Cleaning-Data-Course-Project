# Getting-and-Cleaning-Data-Course-Project

This file explains how my script works to transform the raw data used in this project to the final tiny dataset. The script does the following steps:

1. Defines the working directory and loads the Reshape2 package.
2. Checks if the data is already in the working directory. If not, the data is downloaded.
3. Imports the activities and features into R.
4. Imports the train and test data and combines the separate parts of those datasets into a consolidated train and a consolidated test dataset. 
5. Combines the train and test datasets into one dataframe with only Mean and Standard Deviation variables.
6. Renames columns to cleaner looking, more descriptive names.
7. Creates a new dataset with the averages of each variable for each activity and each subject.
8. Writes the final tidy dataframe to a txt file

The final output is shown in the "step5tidydata.txt" file
