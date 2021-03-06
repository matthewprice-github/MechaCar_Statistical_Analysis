# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG 
Using the data from `MecharCar_mpg.csv`, we can create a simple linear regression model in order to predict a car's MPG rating based on variables like vehicle length, vehicle width, spoiler angle, ground clearance, and whether or not the car is all wheel drive. 

[Linear Regression Results](https://github.com/matthewprice-github/MechaCar_Statistical_Analysis/blob/main/Screenshots/Regression.PNG)

* Looking at the results, the linear regression model overall is statistically signficiant at the >99% level (p=5.35e-11), and accounts for 68% of the variation in the MPG (Adjusted R-squared= 0.6825). 
* we can also see that vehicle length, vehicle weight, and ground clearance are variables that provide statistically significant impact on car MPG. The vehicle length and ground clearance coefficients are statistically significant at the 99% confidence level, while vehicle weight was significant at the 90% confidence level. 
* Given that the overall model proves there is a statistically significant linear relationship between the coefficients and the dependant variable, we can reject the null hypothesis which states that the slope of the linear model is zero. The linear regression has a non-zero slope.  
* This model does predict mpg of MechaCar prototypes somewhat effectively as we can account for 68% of the variation in the data set with the given variables. There were some variables that were proven to be not staistically significant factors in predicting MPG (like AWD and spoiler angle), so there could be cause for these variables can be excluded from the regression. However, there is also the possibility excluding those variables will lead to omitted variable bias, which would actually decrease the accuraccy of the regression. There also is the possibility of bias issues by the inclusion of vehicle length and vehicle weight in the model together. It is not unreasonable to assume that vehicle weight can be somewhat correlated to it's length, which would indicate a relationship between two of the models independant variables and create multicollinearity bias. 

## Summary Statistics on Suspension Coils 
Using the Mecha Car suspension coil data from the `Suspension_Coil.csv`, we can calculation the mean, median, variance, and standard deviation of the suspension coils overall and for each lot. 

[Overall Summary](https://github.com/matthewprice-github/MechaCar_Statistical_Analysis/blob/main/Screenshots/Total_Summary.PNG)

[Summary by Lot](https://github.com/matthewprice-github/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lots_Summary.PNG)

* Since the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI, Lot 3 is well outside that specification with a variance of 170.286 for their suspension coils. Lots 1 and 2 are well within those specifications with variances of 0.98 and 7.46. OVerall, the suspension coil PSI variance equates to 62.29, which is also within the guidelines. 
  * Note: the variance data point is a squared unit, the standard of deviation in PSI for suspension coils are the square roots of their respective variance values. 

## T-Test on Suspension Coils
We can also perform one sample T-Tests for the overall dataset along with seperate tests for each lot in order to determine if their PSI means are statistically differentiated from the population mean of 1,500 PSI. 

[Overall](https://github.com/matthewprice-github/MechaCar_Statistical_Analysis/blob/main/Screenshots/Total_T-Test.PNG)
* P-value = 0.06028, which is just short of the 95% confidence level needed to prove statistical sigificance. Here we fail to reject the null hypothesis which states that the mean of the dataset is not statistically different from the population mean. If the standards of statistically significiance widened to a 90% confidence level, there is statistically siginificant difference. 

[Lot 1 Results](https://github.com/matthewprice-github/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot1_T-Test.PNG)
* P-value = 1, we again fail to reject the null hypothesis. With such a high P-value, it is an indication that Lot 1 is very closely aligned with the population mean. 

[Lot 2 Results](https://github.com/matthewprice-github/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot2_T-Test.PNG)
* P-value = .6072, we again fail to reject the null hypothesis. Lot 2's mean is not statistically different from the population mean. 

[Lot 3 Results](https://github.com/matthewprice-github/MechaCar_Statistical_Analysis/blob/main/Screenshots/Lot3_T-Test.PNG)
* P-value = .04168, we hit the threshold required to reject the null hypothesis. Lot 3's mean PSI is astitically different than the population mean. 


## Study Design: MechaCar vs. Competition 
In order to better compare how MechaCar performs against the competition, we can create a statistical study that compares average maintenance cost of MechaCars vs. a competitor's cars. In order to do this, we would need a dataset that outlines the lifetime maintenance costs of cars (with each observation being 1 car) for MechaCar vehicles on the road, along with a similar dataset for a competitor (or alternatively, an amalgamation of competitors which can essentially act as a "population" dataset). The only metrics required would be the lifetime maintencance cost of each car for MechaCars and a competitor, which can then be averaged and compared against each other. 

A simple analysis with these data sets would be a comparison of means using a two sided T-test, with the competitor's average maintence cost per car as the control, and the MechaCar's average maintence cost as the test sample. In this case, the null hypothesis would be that the average maintence cost of MechaCar is not statistically different than the average maintence cost of the competitor, with the alternative hypothsis being that MechaCar's average maintence cost is statistically different from the competitor (either better or worse). With a two sided T-test we will be able to determine directionality, if statistically significant. 

If MechaCar's average maintenance cost is proven to be statistically signficiant and different than a competitor's, that would be valueable information for a consumer. It would  be just as valueable if the outcome showed that MechaCars average maintence cost is not statistically significant, and MechaCar's average maintenance costs was in line with competitor cars, and one less of a factor for a consumer to have to deal with when comparing cars. 

Another possible consideration would be (data willing) to create subgroups of the MechaCar and competitor data to differentiate model of car, or possibly by a range of model years in order to get more apples to apples comparisons of maintenance costs. So instead of all MechaCar cars vs. all competitor cars, it would be MechaCar trucks vs. Competitor trucks, for example. 


