# Example 1: Convert Integers to Dates
library("lubridate")

# create data frame
df <- data.frame(date = c(20201022, 20201023, 20201026, 20201027, 20201028),
                 sales = c(4, 7, 8, 9, 12))

# convert date column from numeric to year-month-date format
df$date <- ymd(df$date)

# view data frame
df

# view class of date column
class(df$date)

library("lubridate")

# create data frame
df <- data.frame(date = c(20202210, 20202310, 20202610, 20202710, 20202810),
                 sales = c(4, 7, 8, 9, 12))

# convert date column from numeric to year-month-date format
df$date <- ydm(df$date)

# view data frame
df

# Example 2: Convert Months & Years to Dates
# convert date column from numeric to year -month-date format
df$date <- as.Date("2010-01-01") + months(df$date)

# view data frame
df

# view class of date column
class(df$date)

library("lubridate")

# create data frame
df <- data.frame(date = c(11, 15, 18, 22, 24),
                 sales = c(4, 7, 8, 9, 12))

# convert date column from numeric to year-month-date format
df$date <- as.Date("2010-01-01") + years(df$date)

# view data frame
df

# view class of date column
class(df$date)






