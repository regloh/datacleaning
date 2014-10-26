# CodeBook for Coursera Course Project on Getting and Cleaning Data

## Origin of data
The data has been taken from

Human Activity Recognition Using Smartphones Dataset
Version 1.0

collected by:

    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory
    DITEN - Universita degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws
    www.smartlab.ws

which can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The trainings and test data set for the features were combined and used as basis for this data set, where only column representing a mean or standard deviation value where selected. Activity and subject columns were added in front of the feature columns; their values were included in the zip file.

The feature values were grouped by activity and subject and for every combination the mean value for every feature variable has been calculated.

The variable names from the original data set have been converted so that all abbreviations have been expanded, all characters have been translated to lower case and all special characters have been removed.

So all variable names starting with the letter 't' (for time) have been expanded to 'time', variable names starting with letter f (for frequency) have been expanded with frequency,
the abbreviation 'Mag' denoting an Euclidean norm has been expanded to magnitude, 
'Gyro' to 'gyroscope', 'Acc' to 'accelerometer', 'std' to 'standarddeviation'.

The triaxial indicators (-X, -Y, -Z) at the end of the names just became (x, y, and z).

The following description is based on the README.txt and features_info.txt files included in the original zip file.

Description of some variables are given for a group of variables, e.g. when the same description fits to a  set of variables, which e.g. are only different in the spatial axis they are referring to.

According to the original README.txt file

    "Features are normalized and bounded within [-1,1]."
    
Because the values in this data set is calculate as the mean value of these original feature values, also all feature values in this data set are bounded within [-1,1].


## Grouping variables

1. activity

    One of the following activities:
  
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

2. subject

    A number in the range of 1..30 identifying the subject participating in the trial
    



## Feature variables 

The following variables are all representing a *mean* value for the grouping of activity and subject, but the labels do *not* a *mean* part, to indicate this fact. If labels contain a mean part, then the underlying column label from the original data set did already contain it.

In the following description it is not explicitly mentioned any more that the variables contain mean values. If a description states "Mean value of ...", then the original value was already a mean value, and a new mean value (the described value) has been calculated out of it.

Description of some variables are given for a group of variables, e.g. when the same description fits to a set of variables, which e.g. are only different in the spatial axis they are referring to.

If it is referred to "original values", then the values in the original data set from the zip file is meant.

According to the original README.txt file

    "Features are normalized and bounded within [-1,1]."
    
Because the values in this data set is calculated as the mean value of these original feature values, also all feature values in this data set are bounded within [-1,1].


    
3. timebodyaccelaratormeanx

4. timebodyaccelaratormeany

5. timebodyaccelaratormeanz

    Description for 3. - 5.:
    
    Mean value of time domain signals for triaxial (in x,z, and z directions) body acceleration from the 
    accelerometer (total acceleration).

6. timebodyaccelaratorstandarddeviationx

7. timebodyaccelaratorstandarddeviationy

8. timebodyaccelaratorstandarddeviationz

    Description for 6. - 8.:
    
    Standard deviation of time domain signals for triaxial (in x,z, and z directions) body 
    acceleration from the accelerometer (total acceleration).

9. timegravityaccelaratormeanx

10. timegravityaccelaratormeany

11. timegravityaccelaratormeanz

    Description for 9. - 11.:
    
    Mean value of time domain signals for triaxial (in x,z, and z directions) gravity acceleration from the 
    accelerometer (total acceleration).

12. timegravityaccelaratorstandarddeviationx

13. timegravityaccelaratorstandarddeviationy

14. timegravityaccelaratorstandarddeviationz

    Description for 12. - 14.:
    
    Standard deviation of time domain signals for triaxial (in x,z, and z directions) gravity acceleration
    from the accelerometer (total acceleration).


15. timebodyaccelaratorjerkmeanx

16. timebodyaccelaratorjerkmeany
 
17. timebodyaccelaratorjerkmeanz

    Description for 15. - 17.:
    
    Mean value of time domain triaxial Jerk signals derived from the corresponding original values for 
    the variables described in 3. - 5.


18. timebodyaccelaratorjerkstandarddeviationx

19. timebodyaccelaratorjerkstandarddeviationy

20. timebodyaccelaratorjerkstandarddeviationz

    Description for 18. - 20.:
    
    Standard deviation of time domain triaxial Jerk signals derived from the corresponding original values for 
    the variables described in 6. - 8.



21. timebodygyroscopemeanx

22. timebodygyroscopemeany

23. timebodygyroscopemeanz

    Description for 21. - 23.:
    
    Mean value of time domain signals for triaxial (in x,z, and z directions) angular velocity from the 
    gyroscope.

24. timebodygyroscopestandarddeviationx

25. timebodygyroscopestandarddeviationy

26. timebodygyroscopestandarddeviationz

    Description for 24. - 26.:
    
    Standard deviation of time domain signals for triaxial (in x,z, and z directions) angular velocity from the 
    gyroscope.

27. timebodygyroscopejerkmeanx

28. timebodygyroscopejerkmeany

29. timebodygyroscopejerkmeanz

    Description for 27. - 29.:
    
    Mean value of time domain triaxial Jerk signals derived from the corresponding original values for 
    the variables described in 21. - 23.


30. timebodygyroscopejerkstandarddeviationx

31. timebodygyroscopejerkstandarddeviationy

32. timebodygyroscopejerkstandarddeviationz

    Description for 30. - 32.:
    
    Mean value of time domain triaxial Jerk signals derived from the corresponding original values for 
    the variables described in 24. - 26.


33. frequencybodyaccelaratormeanx

34. frequencybodyaccelaratormeany

35. frequencybodyaccelaratormeanz

    Description for 33. - 35.:
    
    Mean value of frequency domain signals for triaxial (in x,z, and z directions) body 
    acceleration from the accelerometer (total acceleration).


36. frequencybodyaccelaratorstandarddeviationx

37. frequencybodyaccelaratorstandarddeviationy

38. frequencybodyaccelaratorstandarddeviationz

    Description for 36. - 38.:
    
    Standard deviation of frequency domain signals for triaxial (in x,z, and z directions)
    body acceleration from the accelerometer (total acceleration).


39. frequencybodyaccelaratorjerkmeanx

40. frequencybodyaccelaratorjerkmeany

41. frequencybodyaccelaratorjerkmeanz

    Description for 39. - 41.:
    
    Mean value of frequency domain triaxial Jerk signals derived from the corresponding 
    original values for the variables described in 33. - 35.


42. frequencybodyaccelaratorjerkstandarddeviationx

43. frequencybodyaccelaratorjerkstandarddeviationy

44. frequencybodyaccelaratorjerkstandarddeviationz

    Description for 42. - 44.:
    
    Standard deviation of frequency domain triaxial Jerk signals derived from the
    corresponding original values for the variables described in 36. - 38.


45. frequencybodygyroscopemeanx

46. frequencybodygyroscopemeany

47. frequencybodygyroscopemeanz

    Description for 45. - 47.:
    
    Mean value of frequency domain signals for triaxial (in x,z, and z directions) angular 
    velocity from the gyroscope.


48. frequencybodygyroscopestandarddeviationx

49. frequencybodygyroscopestandarddeviationy

50. frequencybodygyroscopestandarddeviationz

    Description for 48. - 50.:
    
    Standard deviation of frequency domain signals for triaxial (in x,z, and z directions) angular 
    velocity from the gyroscope.


