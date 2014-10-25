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

The trainings and test data set for the features were combinde and used as basis for this data set, where only column representing a mean or standdard deviation value where selected. The features values where labelled with the activity and subject values included in the zip file (see activity and subject column below).

The feature values were grouped by activity and subject and for every combination the mean value for every feature variable has been calculated.

The variable names from the original data set have been converted so that all abbreviations have been expanded, all characters have been translated to lower case and all special characters have been removed.

So all variable names starting with the letter 't' (for time) have been expanded to 'time', variable names starting wiht letter f (for frequency) have been expanded with frequency,
the abbreviation 'Mag' denoting an euclidean norm has been expanded to magnitude, 
'Gyro' to 'gyroscope', 'Acc' to 'accelerometer', 'std' to 'standarddeviation'.

The triaxial indicators (-X, -Y, -Z) at the end of the names just became (x, y, and z).



## Grouping variables

1. activity

    one of the following activities:
  
        WALKING
        WALKING_UPSTAIRS
        WALKING_DOWNSTAIRS
        SITTING
        STANDING
        LAYING

2. subject

    a number in the range of 1..30 identifying the subject participating in the trial
    

## Some General remarks to the following variables

## measurements

The following variables are all representing a mean value for the grouping of activity and subject.

The measurements 
    
3. timebodyaccelaratormeanx

4. timebodyaccelaratormeany

5. timebodyaccelaratormeanz

6. timebodyaccelaratorstandarddeviationx

7. timebodyaccelaratorstandarddeviationy

8. timebodyaccelaratorstandarddeviationz

9. timegravityaccelaratormeanx

10. timegravityaccelaratormeany

11. timegravityaccelaratormeanz

12. timegravityaccelaratorstandarddeviationx

13. timegravityaccelaratorstandarddeviationy

14. timegravityaccelaratorstandarddeviationz



15. timebodyaccelaratorjerkmeanx

16. timebodyaccelaratorjerkmeany
 
17. timebodyaccelaratorjerkmeanz

18. timebodyaccelaratorjerkstandarddeviationx

19. timebodyaccelaratorjerkstandarddeviationy

20. timebodyaccelaratorjerkstandarddeviationz



21. timebodygyroscopemeanx

22. timebodygyroscopemeany

23. timebodygyroscopemeanz

24. timebodygyroscopestandarddeviationx

25. timebodygyroscopestandarddeviationy

26. timebodygyroscopestandarddeviationz


27. timebodygyroscopejerkmeanx

28. timebodygyroscopejerkmeany

29. timebodygyroscopejerkmeanz

30. timebodygyroscopejerkstandarddeviationx

31. timebodygyroscopejerkstandarddeviationy

32. timebodygyroscopejerkstandarddeviationz


33. timebodyaccelaratormagnitudemean

34. timebodyaccelaratormagnitudestandarddeviation


35. timegravityaccelaratormagnitudemean

36. timegravityaccelaratormagnitudestandarddeviation


37. timebodyaccelaratorjerkmagnitudemean

38. timebodyaccelaratorjerkmagnitudestandarddeviation


39. timebodygyroscopemagnitudemean

40. timebodygyroscopemagnitudestandarddeviation


41. timebodygyroscopejerkmagnitudemean

42. timebodygyroscopejerkmagnitudestandarddeviation


43. frequencybodyaccelaratormeanx

44. frequencybodyaccelaratormeany

45. frequencybodyaccelaratormeanz

46. frequencybodyaccelaratorstandarddeviationx

47. frequencybodyaccelaratorstandarddeviationy

48. frequencybodyaccelaratorstandarddeviationz


49. frequencybodyaccelaratorjerkmeanx

50. frequencybodyaccelaratorjerkmeany

51. frequencybodyaccelaratorjerkmeanz

52. frequencybodyaccelaratorjerkstandarddeviationx

53. frequencybodyaccelaratorjerkstandarddeviationy

54. frequencybodyaccelaratorjerkstandarddeviationz


55. frequencybodygyroscopemeanx

56. frequencybodygyroscopemeany

57. frequencybodygyroscopemeanz

58. frequencybodygyroscopestandarddeviationx

59. frequencybodygyroscopestandarddeviationy

60. frequencybodygyroscopestandarddeviationz


61. frequencybodyaccelaratormagnitudemean

62. frequencybodyaccelaratormagnitudestandarddeviation


63. frequencybodybodyaccelaratorjerkmagnitudemean

64. frequencybodybodyaccelaratorjerkmagnitudestandarddeviation


65. frequencybodybodygyroscopemagnitudemean

66. frequencybodybodygyroscopemagnitudestandarddeviation

67. frequencybodybodygyroscopejerkmagnitudemean

68. frequencybodybodygyroscopejerkmagnitudestandarddeviation
