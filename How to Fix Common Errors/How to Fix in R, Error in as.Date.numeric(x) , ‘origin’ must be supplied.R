# This error usually occurs when you attempt to convert a
# number to a date in R, but fail to provide an origin date.
# How to Reproduce the Error
# create data frame
df <- data.frame(date=c(27, 140, 180, 200),
                 sales=c(12, 22, 30, 31))

# view data frame
df

# view structure of data frame
str(df)

# attempt to convert date column to date formate
df$date <- as.Date(df$date)

# How to Fix the Error

# convert date column to date format, using 2020-01-01 as origin date
df$date <- as.Date(df$date, origin = "2020-01-01")

# view updated data frame
df

# display class of date column
class(df$date)
