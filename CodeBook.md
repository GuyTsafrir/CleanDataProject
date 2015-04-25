There are 2 datasets after running the script(read README.md for instructions).

1. data:
first 3 columns are descriptive of the test: 

activity - What activity has been done for this test (LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS)
subject  - The subject number [1,30]
type	 - The test type (test,training); remark - this hasn't been asked for but I believe to be important to categorize


The rest are stated below. The key to understanding the naming convention is this:
a. t - at beginning is a time based measurement 
b. f - at the beginning is a frequency based measuremnt (Fourier)
c. angle - also time based, but of angular acceleration, force
d. near the end you have mean - which means this is a mean of the measurements    
e. near the end you have std - which means this is a standard deviation of the measurements

All the rest are self explanatory - 
tBodyAccmeanX                     
tBodyAccmeanY                     
tBodyAccmeanZ                    
tGravityAccmeanX                  
tGravityAccmeanY                  
tGravityAccmeanZ                 
tBodyAccJerkmeanX                 
tBodyAccJerkmeanY                 
tBodyAccJerkmeanZ                
tBodyGyromeanX                    
tBodyGyromeanY                    
tBodyGyromeanZ                   
tBodyGyroJerkmeanX                
tBodyGyroJerkmeanY                
tBodyGyroJerkmeanZ               
tBodyAccMagmean                   
tGravityAccMagmean                
tBodyAccJerkMagmean              
tBodyGyroMagmean                  
tBodyGyroJerkMagmean              
fBodyAccmeanX                    
fBodyAccmeanY                     
fBodyAccmeanZ                     
fBodyAccmeanFreqX                
fBodyAccmeanFreqY                 
fBodyAccmeanFreqZ                 
fBodyAccJerkmeanX                
fBodyAccJerkmeanY                 
fBodyAccJerkmeanZ                 
fBodyAccJerkmeanFreqX            
fBodyAccJerkmeanFreqY             
fBodyAccJerkmeanFreqZ             
fBodyGyromeanX                   
fBodyGyromeanY                    
fBodyGyromeanZ                    
fBodyGyromeanFreqX               
fBodyGyromeanFreqY                
fBodyGyromeanFreqZ                
fBodyAccMagmean                  
fBodyAccMagmeanFreq               
fBodyBodyAccJerkMagmean           
fBodyBodyAccJerkMagmeanFreq      
fBodyBodyGyroMagmean              
fBodyBodyGyroMagmeanFreq          
fBodyBodyGyroJerkMagmean         
fBodyBodyGyroJerkMagmeanFreq      
angletBodyAccMeangravity          
angletBodyAccJerkMeangravityMean 
angletBodyGyroMeangravityMean     
angletBodyGyroJerkMeangravityMean 
angleXgravityMean                
angleYgravityMean                 
angleZgravityMean                 
tBodyAccstdX                     
tBodyAccstdY                      
tBodyAccstdZ                      
tGravityAccstdX                  
tGravityAccstdY                   
tGravityAccstdZ                   
tBodyAccJerkstdX                 
tBodyAccJerkstdY                  
tBodyAccJerkstdZ                  
tBodyGyrostdX                    
tBodyGyrostdY                     
tBodyGyrostdZ                     
tBodyGyroJerkstdX                
tBodyGyroJerkstdY                 
tBodyGyroJerkstdZ                 
tBodyAccMagstd                   
tGravityAccMagstd                 
tBodyAccJerkMagstd                
tBodyGyroMagstd                  
tBodyGyroJerkMagstd               
fBodyAccstdX                      
fBodyAccstdY                     
fBodyAccstdZ                      
fBodyAccJerkstdX                  
fBodyAccJerkstdY                 
fBodyAccJerkstdZ                  
fBodyGyrostdX                     
fBodyGyrostdY                    
fBodyGyrostdZ                     
fBodyAccMagstd                    
fBodyBodyAccJerkMagstd           
fBodyBodyGyroMagstd               
fBodyBodyGyroJerkMagstd          


2. meanSumm - 
This data set is the calculated average of the data which is grouped by activity and subject.

activity  -  activity during test - (LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS)                         
subject   -  subject nume [1,30]     

All the rest are the same variables meaning as above but with average of all the subject and activities resultsL                 
tBodyAccmeanX                    
tBodyAccmeanY                     
tBodyAccmeanZ                     
tGravityAccmeanX                 
tGravityAccmeanY                  
tGravityAccmeanZ                  
tBodyAccJerkmeanX                
tBodyAccJerkmeanY                 
tBodyAccJerkmeanZ                 
tBodyGyromeanX                   
tBodyGyromeanY                    
tBodyGyromeanZ                    
tBodyGyroJerkmeanX               
tBodyGyroJerkmeanY                
tBodyGyroJerkmeanZ                
tBodyAccMagmean                  
tGravityAccMagmean                
tBodyAccJerkMagmean               
tBodyGyroMagmean                 
tBodyGyroJerkMagmean              
fBodyAccmeanX                     
fBodyAccmeanY                    
fBodyAccmeanZ                     
fBodyAccmeanFreqX                 
fBodyAccmeanFreqY                
fBodyAccmeanFreqZ                 
fBodyAccJerkmeanX                 
fBodyAccJerkmeanY                
fBodyAccJerkmeanZ                 
fBodyAccJerkmeanFreqX             
fBodyAccJerkmeanFreqY            
fBodyAccJerkmeanFreqZ             
fBodyGyromeanX                    
fBodyGyromeanY                   
fBodyGyromeanZ                    
fBodyGyromeanFreqX                
fBodyGyromeanFreqY               
fBodyGyromeanFreqZ                
fBodyAccMagmean                   
fBodyAccMagmeanFreq              
fBodyBodyAccJerkMagmean           
fBodyBodyAccJerkMagmeanFreq       
fBodyBodyGyroMagmean             
fBodyBodyGyroMagmeanFreq          
fBodyBodyGyroJerkMagmean          
fBodyBodyGyroJerkMagmeanFreq     
angletBodyAccMeangravity          
angletBodyAccJerkMeangravityMean  
angletBodyGyroMeangravityMean    
angletBodyGyroJerkMeangravityMean 
angleXgravityMean                 
angleYgravityMean                
angleZgravityMean                 
tBodyAccstdX                      
tBodyAccstdY                     
tBodyAccstdZ                      
tGravityAccstdX                   
tGravityAccstdY                  
tGravityAccstdZ                   
tBodyAccJerkstdX                  
tBodyAccJerkstdY                 
tBodyAccJerkstdZ                  
tBodyGyrostdX                     
tBodyGyrostdY                    
tBodyGyrostdZ                     
tBodyGyroJerkstdX                 
tBodyGyroJerkstdY                
tBodyGyroJerkstdZ                 
tBodyAccMagstd                    
tGravityAccMagstd                
tBodyAccJerkMagstd                
tBodyGyroMagstd                   
tBodyGyroJerkMagstd              
fBodyAccstdX                      
fBodyAccstdY                      
fBodyAccstdZ                     
fBodyAccJerkstdX                  
fBodyAccJerkstdY                  
fBodyAccJerkstdZ                 
fBodyGyrostdX                     
fBodyGyrostdY                     
fBodyGyrostdZ                    
fBodyAccMagstd                    
fBodyBodyAccJerkMagstd            
fBodyBodyGyroMagstd              
fBodyBodyGyroJerkMagstd    
