# load car package
install.packages("car")
library("car")

# fit multiple linear regression model
# added variable plots in R
model <- lm(mpg ~ disp + hp + drat, data = mtcars)

summary(model)

# produce added variable plots
avPlots(model)
