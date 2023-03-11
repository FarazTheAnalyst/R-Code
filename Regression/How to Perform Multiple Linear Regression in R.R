# view first six lines of mtcars
head(mtcars)

# create new data frame that contains only the variables we would like to use to
data <- mtcars[ , c("mpg", "disp", "hp", "drat")]

# view first six rows of new data frame
head(data)

# we need to check if the predictor variables have a linear association
# with the response variable
pairs(data, pch = 18, col = "steelblue")

install.packages("GGally")
library(GGally)

# generate the pairs plot
ggpairs(data)

# Each of the predictor variables appears to have a noticeable\
# linear correlation with the response variable mpg

# fitting the model
model <- lm(mpg ~ disp + hp + drat, data = data)

# Checking Assumptions of the Model
# 1. the distribution of model reisduals should be approximately normal
hist(residuals(model), col = "steelblue")

# 2, the variance of the residuals should be consistent for all observations
# this preferred condition is known as homoskedasticity.
# violation of this assumptions is known as heteroskedasticity

# create fitted value vs residual plot
plot(fitted(model), residuals(model))

# add horizontal line at 0
abline(v = 0, lty = 2)

# 
# Ideally we would like the residuals to be equally scattered
# at every fitted value. We can see from the plot that the 
# scatter tends to become a bit larger for larger fitted 
# values, but this pattern isn't extreme enough to cause 
# too much concern

# view summary of the model
summary(model)

# we can find the predicted value of mpg for a car that has
# the following attributes
# disp = 220, hp = 150, drat = 3

# define the coefficients from the model ouput
intercept <- coef(summary(model))["(Intercept)", "Estimate"]
disp <- coef(summary(model))["disp", "Estimate"]
hp <- coef(summary(model))["hp", "Estimate"]
drat <- coef(summary(model))["drat", "Estimate"]

# use the model coefficients to predict the value for mpg
intercept + disp*220 + hp*150 + drat*3









































