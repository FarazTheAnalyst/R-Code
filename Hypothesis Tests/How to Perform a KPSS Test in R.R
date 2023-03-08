# Example 1: KPSS Test in R (With Stationary Data)
# make this example reproducible
set.seed(100)

# create time series data
data <- rnorm(100)

# plot time series data
plot(data, type="l")

# install and load package
library("tseries")

# perform KPSS test
kpss.test(data, null="Trend")

# Example 2: KPSS Test in R (With Non-Stationary Data)
# make this example reproducible
# create time series data
data <-c(0, 3, 4, 3, 6, 7, 5, 8, 15, 13, 19, 12, 29, 15, 45, 23, 67, 45)

# plot time series data as line plot
plot(data, type="l")

# perform kPSS test
kpss.test(data, null = "Trend")
