# One of the most common metrics used to measure the forecasting
# accuracy of a model is MAPE, which stands for mean
# absolute percentage error.

# Method 1: Write Your Own Function
# create dataset
data <- data.frame(actual=c(34, 37, 44, 47, 48, 48, 46, 43, 32, 27, 26, 24),
                   forecast=c(37, 40, 46, 44, 46, 50, 45, 44, 34, 30, 22, 23))

# view dataset
data

# calculate MAPE
mean(abs((data$actual-data$forecast)/data$actual)) * 100

# Method 2: Use a Package
# load MLmetrics package
install.packages("MLmetrics")
library(MLmetrics)

# calculate MAPE
MAPE(data$forecast, data$actual)
