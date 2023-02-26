# define dataset
data <- data.frame(x = c(1, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11, 11),
                   y = c(13, 14, 17, 12, 23, 24, 25, 25, 24, 28, 32, 33, 35, 40, 41))

# plot x and y in dataset
plot(data$x, data$y, pch = 16)

# add horizontal at the y = 20 
abline(h = 20, col="coral2", lwd = 2)

#  add a horizontal solid line at the mean value of y along with
# two horizontal dashed lines at one standard deviation above 
# and below the mean value

plot(data$x, data$y, pch = 16)

# create horizontal line at  mean value of y
abline(h = mean(data$y), lwd =2)

# create horizontal lines at one standard deviation above and below the mean value
abline(h = mean(data$y) + sd(data$y), col = "steelblue", lwd = 3, lty = 2)
abline(h = mean(data$y) - sd(data$y), col = "steelblue", lwd = 3, lty = 2)

# how to add vertical lines
# make the example reproducible
set.seed(0)

# create dataset with 1000 random values distributed with mean =10,sd=2
data <- rnorm(1000, mean = 10, sd = 2)

# create histogram of data values
hist(data, col = "steelblue")

# draw a vertical dashed line at the mean value
abline(v = mean(data), lwd = 3, lty = 2)

# how to add regression lines
# #define dataset
data <- data.frame(x = c(1, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11, 11),
                   y = c(13, 14, 17, 12, 23, 24, 25, 25, 24, 28, 32, 33, 35, 40, 41))

# create scatterplot of x and y values
plot(data$x, data$y, pch = 16)

# fit a linear regression model to the data
reg_model <- lm(y~x, data = data)

# add the fitted regression line to the scatterplot
abline(reg_model, col="steelblue")

# another way to add a regression line to the regression model
# define intercept and slope values
a <- coefficients(reg_model)[1] #intercep
b <- coefficients(reg_model)[2] # slope

# add the fitted regression line to the scatterplot
abline(a=a, b=b, col="steelblue")





























