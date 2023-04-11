# This error usually occurs when you attempt to convert
# an object in R to a date format, but the object is
# currently either a character or factor.

# How to Reproduce the Error
# create data frame
df <- data.frame(date=c('1459397140', '1464397220', '1513467142'),
                 sales=c(140, 199, 243))

# view data frame
df

# attempt to convert values in date column to date
df$date <- as.POSIXct(df$date, origin="1970-01-01")

# we need to use as.numeric() to first convert the values 
# in the date column to a numeric format, which is
# one that as.POSIXct can handle:

# convert values in date column to date
df$date <- as.POSIXct(as.numeric(as.character(df$date)), origin = "1970-01-01")

# view updated data frame
df
