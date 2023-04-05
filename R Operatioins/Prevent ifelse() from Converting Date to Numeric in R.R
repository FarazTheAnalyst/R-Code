# create data frame
df <- data.frame(date=as.Date(c('2022-01-05', '2022-01-17', '2022-01-22',
                                '2022-01-23', '2022-01-29', '2022-02-13')),
                 sales=c(22, 35, 24, 20, 16, 19))

# view data frame
df

# Example 1: Use as.character() in Base R
df$date <- as.Date(ifelse(df$date < "2022-01-20",
                          as.character(df$date+5),
                          as.character(df$date)))

# veiw updated data frame
df

# Example 2: Use if_else() in dplyr
library("dplyr")

# if date is before 2022-01-20 then add 5 days
df$date <- if_else(df$date < "2022-01-20", df$date+5, df$date)

# view updated data frame
df

# Example 3: Use fifelse() in data.table
library("data.table")

# if date is before 2022-01-20 then add 5 days
df$date <- fifelse(df$date < "2022-01-20", df$date+5, df$date)

# view updated data frame
df
