# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG 
Using the data from MecharCar_mpg.csv, we can create a simple linear regression model in order to predict a car's MPG rating based on variables like vehicle length, vehicle width, spoiler angle, ground clearance, and whether or not the car is all wheel drive. 

[Linear Regression Results]()

* Looking at the results, the linear regression model overall is statistically signficiant at the <1% level (p=5.35e-11), and accounts for 68% of the variation in the MPG (Adjust R-squared: 0.6825). 
* we can also see that vehicle length, vehicle weight, and ground clearance are variables that provide statistically significant impact on car MPG. The vehicle length and ground clearance coefficients are satistically significant to at the <1% level, while vehicle weight was significant at the 10% level. 
* Given that the overall model proves there is a statistically significant linear relationship between the coefficients and the dependant variable, we can reject the null hypothesis which states that the slope of the linear model is zero. The linear regression has a non-zero slope.  
* This model does predict mpg of MechaCar prototypes somewhat effectively as we can account for 68% of the variation in the data set with the given variables. There were some variables that were proven to be not staistically significant factors in predicting MPG (like AWD and spoiler angle), sp there could be cause for these variables can be excluded from the regression. However, there is also the possibility excluding those variables will lead to omitted variable bias, which would actually decrease the accuraccy of the regression. There also is the possibility of multicollinearity bias in this regression by including vehicle length and vehicle weight in the model together. It is not unreasonable to assume that vehicle weight can be somewhat correlated to it's length. 

## Summary Statistics on Suspension Coils 
Using the Mecha Car suspension coil data from the Suspension_Coil.csv, we can calculation the mean, median, variance, and standard deviation of the suspension coils overall and for each lot. 

[Overall Summary]()

[Summary by Lot]()

* Since the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coilds must not exceed 100 PSI, Lot3 is well outside that specification with a variance of 170.286 for their suspension coils. Lots 1 and 2 are well within those specifications with variances of 0.98 and 7.46. OVerall, the suspension coil PSI variance equates to 62.29, which is also within the guidelines. 
* * Note: the variance data point is a squared unit, the standard of deviation in PSI for suspension coils are the square roots of their respective variance values. 

## T-Test on Suspension Coils
We can also perform one sample T-Tests for the overall dataset along with seperate tests for each lot in order to determine if their PSI means are statistically differentiated from the population mean of 1,500 PSI. 

[Overall]()
* P-value = 0.06028, which is just short of the 95% confidence level needed to prove staitsitical sigificance. Here we fail to reject the null hypothesis which states that the mean of the dataset is not statistically different from the population mean. If the standards of statistically significiance widened to a 90% confidence level, there is statistically siginificant difference. 

[Lot 1 Results]()
* P-value = 1, we again fail to reject the null hypothesis. With such a high P-value, it is an indication that Lot 1 is very closely aligned with the population mean. 

[Lot 2 Results]()
* P-value = .6072, we again fail to reject the null hypothesis. Lot 2's mean is not stiatically different from the population mean. 

[Lot 3 Results]()
* P-value = .04168, we hit the threshold required to reject the null hypothesis. Lot 3's mean PSI is astitically different than the population mean. 
