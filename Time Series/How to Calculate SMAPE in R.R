# The symmetric mean absolute percentage error (SMAPE) is used to measure
# the predictive accuracy of models.
# Method 1: Use smape() from the Metrics Package
install.packages("Metrics")
library("Metrics")

# define actual values
actual <- c(12, 13, 14, 15, 15, 22, 27)

forecast <- c(11, 13, 14, 14, 15, 16, 18)

# calculate SMAPE
smape(actual, forecast)

# CMethod 2: Write Your Own Function
find_smape <- function(a, f) {
  return (1/length(a) * sum(2*abs(f-a) / (abs(a)+abs(f))*100))
}
#define actual values
actual <- c(12, 13, 14, 15, 15,22, 27)

#define forecasted values
forecast <- c(11, 13, 14, 14, 15, 16, 18)

# calculate SMAPE
find_smape(actual, forecast)
