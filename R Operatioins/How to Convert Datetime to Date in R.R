# Example: Convert Datetime to Date in R
# create data frame
df <- data.frame(dt=as.POSIXct(c('2023-01-01 10:14:00 AM', '2023-01-12 5:58 PM',
                                 '2023-02-23 4:13:22 AM', '2023-02-25 10:19:03 PM')),
                 sales = c(12, 15, 24, 31))

# view data frame
df

# view class of dt column
class(df$dt)

# convert dt column to date
df$dt <- as.Date(df$dt)

# view updated data frame
df

# view class of dt column
class(df$dt)

