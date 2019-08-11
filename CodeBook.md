# Code Book

This Code Book describes the variables, the data, and any transformations or work that you performed to clean up the data.

## Variables
* **Subject** - The numeric identifier for each research test subject (numbers 1-30)
* **Activity** - The type of activity that was done by the test subject

  -**Walking** - Subject was walking
  
  -**Walking Upstairs** - Subject was walking upstairs
  
  -**Walking Downstairs** - Subject was walking downstairs
  
  -**Sitting** - Subject was sitting
  
  -**Standing** - Subject was standing
  
  -**Laying** - Subject was laying down
  
## Actual Measurements
Each of the following is the name of a measurement recorded by the researches that compiled the original data. Each measurement records either **time** or **frequency** and **gravitational** or **body motion** components. The embedded accelerometer and gyroscope of the Samsung Galaxy S II allowed the researchers to capture **3-axial linear acceleration** and **3-axial angular velocity**. The variable names are self-descriptive in terms of explaining which measurement is captured based on the above description.  

* "Time BodyAcc MeanX"                     
* "Time BodyAcc MeanY"                    
* "Time BodyAcc MeanZ"                     
* "Time BodyAcc StDevX"                   
* "Time BodyAcc StDevY"                    
* "Time BodyAcc StDevZ"                   
* "Time GravityAcc MeanX"                  
* "Time GravityAcc MeanY"                 
* "Time GravityAcc MeanZ"                  
* "Time GravityAcc StDevX"                
* "Time GravityAcc StDevY"                 
* "Time GravityAcc StDevZ"                
* "Time BodyAccJerk MeanX"                 
* "Time BodyAccJerk MeanY"                
* "Time BodyAccJerk MeanZ"                 
* "Time BodyAccJerk StDevX"               
* "Time BodyAccJerk StDevY"                
* "Time BodyAccJerk StDevZ"               
* "Time BodyGyro MeanX"                    
* "Time BodyGyro MeanY"                   
* "Time BodyGyro MeanZ"                    
* "Time BodyGyro StDevX"                  
* "Time BodyGyro StDevY"                   
* "Time BodyGyro StDevZ"                  
* "Time BodyGyroJerk MeanX"                
* "Time BodyGyroJerk MeanY"               
* "Time BodyGyroJerk MeanZ"                
* "Time BodyGyroJerk StDevX"              
* "Time BodyGyroJerk StDevY"               
* "Time BodyGyroJerk StDevZ"              
* "Time BodyAccMag Mean"                   
* "Time BodyAccMag StDev"                 
* "Time GravityAccMag Mean"                
* "Time GravityAccMag StDev"              
* "Time BodyAccJerkMag Mean"               
* "Time BodyAccJerkMag StDev"             
* "Time BodyGyroMag Mean"                  
* "Time BodyGyroMag StDev"                
* "Time BodyGyroJerkMag Mean"              
* "Time BodyGyroJerkMag StDev"            
* "Frequency BodyAcc MeanX"                
* "Frequency BodyAcc MeanY"               
* "Frequency BodyAcc MeanZ"                
* "Frequency BodyAcc StDevX"              
* "Frequency BodyAcc StDevY"               
* "Frequency BodyAcc StDevZ"              
* "Frequency BodyAcc MeanFreqX"            
* "Frequency BodyAcc MeanFreqY"           
* "Frequency BodyAcc MeanFreqZ"            
* "Frequency BodyAccJerk MeanX"           
* "Frequency BodyAccJerk MeanY"            
* "Frequency BodyAccJerk MeanZ"           
* "Frequency BodyAccJerk StDevX"           
* "Frequency BodyAccJerk StDevY"          
* "Frequency BodyAccJerk StDevZ"           
* "Frequency BodyAccJerk MeanFreqX"       
* "Frequency BodyAccJerk MeanFreqY"        
* "Frequency BodyAccJerk MeanFreqZ"       
* "Frequency BodyGyro MeanX"               
* "Frequency BodyGyro MeanY"              
* "Frequency BodyGyro MeanZ"               
* "Frequency BodyGyro StDevX"             
* "Frequency BodyGyro StDevY"              
* "Frequency BodyGyro StDevZ"             
* "Frequency BodyGyro MeanFreqX"           
* "Frequency BodyGyro MeanFreqY"          
* "Frequency BodyGyro MeanFreqZ"           
* "Frequency BodyAccMag Mean"             
* "Frequency BodyAccMag StDev"             
* "Frequency BodyAccMag MeanFreq"         
* "Frequency BodyBodyAccJerkMag Mean"      
* "Frequency BodyBodyAccJerkMag StDev"    
* "Frequency BodyBodyAccJerkMag MeanFreq"  
* "Frequency BodyBodyGyroMag Mean"        
* "Frequency BodyBodyGyroMag StDev"        
* "Frequency BodyBodyGyroMag MeanFreq"    
* "Frequency BodyBodyGyroJerkMag Mean"     
* "Frequency BodyBodyGyroJerkMag StDev"   
* "Frequency BodyBodyGyroJerkMag MeanFreq"

## Steps of my script to transform the data to the final output
1. Defines the working directory and loads the Reshape2 package.
2. Checks if the data is already in the working directory. If not, the data is downloaded.
3. Imports the activities and features into R.
4. Imports the train and test data and combines the separate parts of those datasets into a consolidated train and a consolidated test dataset. 
5. Combines the train and test datasets into one dataframe with only Mean and Standard Deviation variables.
6. Renames columns to cleaner looking, more descriptive names.
7. Creates a new dataset with the averages of each variable for each activity and each subject.
8. Writes the final tidy dataframe to a txt file


## Data Source
The data from the project came from this link:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
