# create data frame
df <- data.frame(day=factor(c('1/1/2020', '1/13/2020', '1/15/2020')),
                 sales=c(145, 190, 223))

# view data frame
df

# view class of "day" variable
class(df$day)

# Example 1: Convert Factor to Date Using Base R
# convert "day" column to date format
df$day <- as.Date(df$day, format="%m/%d/%Y")

# view updated data frame
df

# view class of "day" variable
class(df$day)

# Example 2: Convert Factor to Date Using Lubridate
library("lubridate")

# convert "day" column to date format
# create data frame
df <- data.frame(day=factor(c('1/1/2020', '1/13/2020', '1/15/2020')),
                 sales=c(145, 190, 223))

df$day <- mdy(df$day)

# view updated data frame
df

# view class of "day" variable
class(df$day)
























