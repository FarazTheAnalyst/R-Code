# Example 1: Add Months to Date
# load lubridate package
library("lubridate")

# deifne date
my_date <- as.Date("2022-7-15")

# add two months to date
my_date %m+% months(2)

# Example 2: Subtract Months from Date
library("lubridate")

# define date
my_date <- as.Date("2022-7-15")

# subtract two months from date
my_date %m-% months(2)

# Example 3: Add & Subtract Months in Data Frame
# create data frame
df <- data.frame(date=as.Date(c("2022-3-14", "2022-5-29", "2022-7-15")),
                 sales=c(140, 119, 138))

# view data frame
df

# load package
library("lubridate")

# create new column that adds two months to each date
df$two_months_after <- df$date %m+% months(2)

# create enw column that subtract two months from each date
df$two_months_before <- df$date %m-% months(2)

# view updated data frame
df























