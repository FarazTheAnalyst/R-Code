# Example 1: Convert One String to Datetime
# define string variable
string_x <- "2020-01-01 14:45:18"

# convert string variable to datetime variable
datetime_x <- as.POSIXct(string_x, format = "%Y-%m-%d %H:%M:%S", tz="UTC")

# view new datetime variable
datetime_x

# view class of datetime variable
class(datetime_x)

# Example 2: Convert Column of Strings to Datetime
# define data frame
df <- data.frame(day=c("2020-01-01 14:45:18", "2020-02-01 14:00:11",
                       "2020-03-01 12:40:10", "2020-04-01 11:00:00"),
                 sales=c(13, 18, 22, 19))

# view data frame
df

# convert column of strings to datetime
df$day <- as.POSIXct(df$day, format = "%Y-%m-%d %H:%M:%S", tz="UTC")

# view class of "day" column
class(df$day)
