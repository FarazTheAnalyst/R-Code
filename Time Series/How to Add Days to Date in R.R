# create data frame
df <- data.frame(date=c('2022-01-03', '2022-02-15', '2022-05-09',
                        '2022-08-10', '2022-10-14', '2022-12-30'),
                 sales=c(130, 98, 120, 88, 94, 100))

# view data frame
df

# Example 1: Add Days to Date Using Base R
# create new column that adds 5 days to date column
df$date_plus5 <- as.Date(df$date) + 5

# view updated data frame
df

# display class of date_plus5 column
class(df$date_plus5)

# Example 2: Add Days to Date Using lubridate Package
library("lubridate")

# view updated data frame
df

# create new column that adds 5 days to date column
df$date_plus5 <- ymd(df$date) + days(5)

# view updated data frame
df
