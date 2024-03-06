# Run a linear regression analysis with Blood Pressure as the dependent variable & Hours of Sleep as the independent variable. 

# load required library
library(ggplot2)

# set the correct path of files to read
setwd(" ")

# read the files
SleepHoursData <- read.csv("SleepHoursData-1.csv", header = TRUE)

# linear equation, y = mx + c
# Blood_Pressure (outcome/dependent variable) = Sleep_Hours(independent/predictor variable) * m + c
# linear regression model to predict the relationship between Hours of Sleep and Blood Pressure
model <- lm(Blood_Pressure ~ Sleep_Hours, data = SleepHoursData)
summary(model)

# visualization by a graph
ggplot(SleepHoursData, aes(x = Blood_Pressure, y = Sleep_Hours)) +  
  geom_point() +    
  geom_smooth(method="lm", se = FALSE,  color = "red") +    
  labs(title="Simple Linear Regression: Blood Pressure vs Sleep_Hours", x="Blood Pressure", y="Sleep_Hours")

# There is clearly no relationship between Blood Pressure and Sleep_Hours. The regression line is a straight line from the plot. 

# Explanations from the model summary 
# Equation: Blood Pressure = 152.19058 + 0.06006 * Sleep_Hours
# Intercept (β0 = 152.19058) is the estimated blood pressure when the sleep hours is close to 0. 
# This doesn't have a meaningful interpretation as sleep hours can't be 0 to interpret blood pressure. 
# The slope coefficient (β1 = 0.06006) indicates the change in Blood Pressure for each one-unit increase in hours of sleep. 
# In this case, since the coefficient is close to zero and not statistically significant as (p-value = 0.948) very high.
# There's little to no evidence of a linear relationship between Hours of Sleep and Blood Pressure in this dataset. 
# There is a need for more variables to investigate Blood Pressure accurately.



# Run a multiple linear regression analysis with Blood Pressure as the dependent variable and Hours of Sleep, Age, and BMI as independent variables. 
model2 <- lm(Blood_Pressure ~ Sleep_Hours + Age + BMI, data=SleepHoursData)
summary(model2)

# The multiple linear regression equation is:
# Blood_Pressure = 125.92 - 0.8105 * Sleep_Hours - 0.1925 * Age + 1.579 * BMI
# Intercept (β0): 125.92
# Sleep Hours (β1): -0.8105
# Age(β2):-0.9125
# BMI(β3): 1.579




