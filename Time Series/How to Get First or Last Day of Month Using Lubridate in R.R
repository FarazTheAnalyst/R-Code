# create data frame
df <- data.frame(date=c('2022-01-05', '2022-02-18', '2022-03-21',
                        '2022-09-15', '2022-10-30', '2022-12-25'),
                 sales=c(14, 29, 25, 23, 39, 46))

# view data frame
df

# Example 1: Get First Day of Month Using lubridate
# create new column that contains first day of month
library("lubridate")
df$first_day <- floor_date(ymd(df$date), "month")

# view updated data frame
df

# Example 2: Get Last Day of Month Using lubridate
df$last_day <- ceiling_date(ymd(df$date), "month") -days(1)

# view updated data frame
df
