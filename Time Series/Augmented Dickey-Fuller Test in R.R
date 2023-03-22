# A time series is said to be "stationary" if it has no trend,
# exhibits constant variance over time, and has a constant
# autocorrelation structure over time.

# Example: Augmented Dickey-Fuller Test in R
data <- c(3, 4, 4, 5, 6, 7, 6, 6, 7, 8, 9, 12, 10)

# plot data 
plot(data, type = "l")

# perform augmented Dickey-Fuller test
# load tseries package
library(tseries)
adf.test(data)

