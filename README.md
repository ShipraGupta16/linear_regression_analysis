# Linear regression analysis

### Applying linear regression statistical modeling to study and predict the impact of variables such as Age, Sleep hours, Body Mass Index (BMI) on Blood Pressure. 

#### Explanations from the model summary 
Equation: Blood Pressure = 152.19058 + 0.06006 * Sleep_Hours <br>
Intercept (β0 = 152.19058) is the estimated blood pressure when the sleep hours is close to 0. <br>
This doesn't have a meaningful interpretation as sleep hours can't be 0 to interpret blood pressure. <br>
The slope coefficient (β1 = 0.06006) indicates the change in Blood Pressure for each one-unit increase in hours of sleep. <br>
In this case, since the coefficient is close to zero and not statistically significant as (p-value = 0.948) very high. <br>
There's little to no evidence of a linear relationship between Hours of Sleep and Blood Pressure in this dataset. <br>
There is a need for more variables to investigate Blood Pressure accurately. <br><br>


#### Applying multiple linear regression analysis with Blood Pressure as the dependent variable and Hours of Sleep, Age, and BMI as independent variables. 

### The multiple linear regression equation is: <br>
Blood_Pressure = 125.92 - 0.8105 * Sleep_Hours - 0.1925 * Age + 1.579 * BMI <br>
Intercept (β0): 125.92 <br>
Sleep Hours (β1): -0.8105 <br>
Age(β2):-0.9125 <br>
BMI(β3): 1.579 <br>

# Sleep Hours: There is a negative coefficient (-0.8105). 
This means that, for each additional hour of sleep, there is a decrease of 0.8105 units in blood pressure, while holding Age and BMI as constants and it's not statistically significant because p-value is 0.081 and is higher than 0.05. It suggests that sleep hours may not have a strong linear relationship with blood pressure in this model. <br>

# Age: There is a negative coefficient (-0.8125). 
This indicates that, for each one-unit increase in age, there is a decrease of 0.1925 units in blood pressure while holding Sleep Hours and BMI as constants and it’s statistically significant because p-value is very small 4.09e-07. Blood pressure decreases with increasing age, possibly due to some in physiological changes or lifestyle adjustments. <br>

# BMI: There is a positive coefficient (1.579). 
This means that for each one-unit increase in BMI, there is an increase of 1.5798 units in blood pressure while holding Sleep Hours and Age as constants and it is statistically significant because p-value is very small < 2e-16. Blood pressure significantly increases with higher BMI, indicating a positive linear relationship between Body Mass Index and blood pressure. <br>
