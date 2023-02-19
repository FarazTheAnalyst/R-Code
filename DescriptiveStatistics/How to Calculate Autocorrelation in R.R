# load data
install.packages("tseries")
library("tseries")

# define data
x <- c(22, 24, 25, 25, 28, 29, 34, 37, 40, 44, 51, 48, 47, 50, 51)
# calculate autocorrelations
acf(x, pl=FALSE)

# calcualte autocorrelations up to lag=5
acf(x, lag=5, pl=FALSE)

# plot autocorrelation function
acf(x)

# plot autocorrelation function with custom title
acf(x, main="Autocorrelation by lag")
