# Example: Convert Data Frame to Time Series in R
# create data frame
df <- data.frame(data = as.Date("2022-01-01") + 0:9,
                 sales = runif(10, 10, 500) + seq(50, 59)^2)

# view data frame
df

# display class of df
class(df)

# To convert the data frame to a time series object, we can use
# the read.zoo() function from the zoo package:
library("zoo")

# convert data frame to time series
tseries <- read.zoo(df)

# view time series
tseries

# display class of tseries
class(tseries)

# convert to  ts object
tseries_ts <- as.ts(tseries)

# viewt time serires object
tseries_ts
