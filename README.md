# MechaCar_Statistical_Analysis
Module 15 (R and R studio)
## Linear Regression to Predict MPG
1. Vehicle length and ground clearance had the strongest positive correlation to the MPG values in the dataset.
2. The linear model predicted a multiple R-squared value of 0.7149 (Adjusted 0.6825), this indicates that the slope is not zero. 
3. The linear model provides some valuable insights into factors that may affect Miles per Galon.  For example, keeping the length and ground clearance low generally improve MPG, while spoiler angle, weight and drive train do not.  That being said, there are still a number of outliers in the dataset. As the R-squared value is greater than 0.5, one can deduce that the model effectively predicts the MPG of the prototypes. 

## Summary Statistics on Suspension Coils
The total variance for all manufacturing lots is 62.29, which indicates the manufacturer is within the target variance of < 100 
- Lots 1 and 2 are within the variance requirements at 0.98 & 7.47 respectively, however, lot 3 is well outside the target variance at 170.29

## T-Tests on Suspension Coils
Running a t-test against a random sample of data produced a mean of x = 3.176
Running a t-test against each lot specifically provided similar results:
- Lot 1: 3.176
- Lot 2: 3.176
- Lot 3: 3.175

Once again, Lot three is a slight outlier in the data set.  However, based on the variance discovered in deliverable 2, mean may not be the best statistic to compare against for these three manufacturing lots. 

## Study Design: MechaCar vs Competition
When reviewing the data currently available to us, we can determine that car length and ground clearance have a negative correlation to MPG.  We can surmise that when developing new prototypes, keeping these low would be beneficial to improving miles per gallon.
We can also determine that our third manufacturing lot is having some issues with producing consistent suspension coils pounds per square inch. 
Based on the variance within lot 3, I would recommend re-running the linear regression tests on vehicles manufactured at lots 1 and 2 only. 
I Hypothesize that removing vehicles produced at lot 3 will help in finding clearer correlations when doing linear regression testing. 
- In order to do this, we would require the vehicle ID appended to the MechaCar mpg summary table.
- We can re-run the linear regression tests on the subset of data. 

I would also recommend comparing our prototypes against existing car manufacturer data, as we will be able to determine whether or not our prototypes are outliner among the whole industry.  

