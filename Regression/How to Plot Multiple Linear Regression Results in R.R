# create dateset
data <- data.frame(x = c(1, 1, 2, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11, 11),
                   y = c(13, 14, 17, 23, 24, 25, 25, 24, 28, 32, 33, 35, 40, 41))

# fit simple linear regression model
model <- lm(y~x, data = data)

# create scatterplot of data
plot(data$x, data$y)

# add fitted regression line
abline(model)

# Example: Plotting Multiple Linear Regression Results in R
# fit multiple linear regression model
model <- lm(mpg ~ disp + hp + drat, data = mtcars)

# view summary results
summary(model)

# load car package
library("car")

# produce added variable plots
avPlots(model)
