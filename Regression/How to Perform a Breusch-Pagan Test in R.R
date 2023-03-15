# A Breusch-Pagan Test is used to determine if heteroscedasticity
# is present in a regression analysis.

# fit a regression model
# load the dataset 
data("mtcars")

# fit a regression model
model <- lm(mpg ~ disp + hp, data = mtcars)

# view model summary 
summary(model)

# Perform a Bresuch-Pagan test
# load lmtest library
library(lmtest)

# perform Breuch-Pagan Test
bptest(model)
