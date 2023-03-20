# The root mean square error (RMSE) is a metric that tells
# us how far apart our predicted values are from our observed 
# values in a regression analysis, on average.

# Method 1: Write Your Own Function
# create dataset
data <- data.frame(actual=c(34, 37, 44, 47, 48, 48, 46, 43, 32, 27, 26, 24),
                   predicted=c(37, 40, 46, 44, 46, 50, 45, 44, 34, 30, 22, 23))

# view datset
data

# calculate the RMSE
sqrt(mean((data$actual - data$predicted)^2))

# Method 2: Use a Package
# load Metric package
library("Metrics")

# calculate RMSE
rmse(data$actual, data$predicted)
