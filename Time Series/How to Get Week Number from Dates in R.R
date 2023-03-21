# create data frame
df <- data.frame(date=as.Date(c('1/8/2022', '1/9/2022', '2/10/2022', '2/15/2022',
                                '3/5/2022', '3/22/2022', '3/27/2022'), '%m/%d/%Y'),
                 sales=c(8, 14, 22, 23, 16, 17, 23))

# view data frame
df

# Example 1: Get Week Number Using Base R
# add column to show week number
df$week_num <- strftime(df$date, format = "%v")

# view updated data frame
df

# Example 2: Get Week Number Using Lubridate Package
# add column to show week number
library("lubridate")
df$week_num <- isoweek(ymd(df$date))

# view updated data frame
df
